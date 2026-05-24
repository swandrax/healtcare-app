import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/theme/app_typography.dart';
import '../bloc/consultation_bloc.dart';
import '../bloc/consultation_event.dart';
import '../bloc/consultation_state.dart';
import '../widgets/message_bubble_widget.dart';
import '../widgets/emergency_alert_widget.dart';

class ConsultationChatPage extends StatefulWidget {
  final String consultationId;
  final String currentUserId;

  const ConsultationChatPage({
    super.key,
    required this.consultationId,
    required this.currentUserId,
  });

  @override
  State<ConsultationChatPage> createState() => _ConsultationChatPageState();
}

class _ConsultationChatPageState extends State<ConsultationChatPage> {
  final _messageController = TextEditingController();
  final List<String> _emergencyAlerts = [];

  @override
  void initState() {
    super.initState();
    context.read<ConsultationBloc>().add(LoadMessagesRequested(widget.consultationId));
  }

  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Consultation Chat'),
        actions: [
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {
              _showAlignmentPanel();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Emergency Alerts view if triggered
          if (_emergencyAlerts.isNotEmpty)
            ..._emergencyAlerts.map(
              (alert) => EmergencyAlertWidget(message: alert),
            ),

          Expanded(
            child: BlocBuilder<ConsultationBloc, ConsultationState>(
              builder: (context, state) => switch (state) {
                ConsultationInitial() => const Center(
                    child: Text('Initializing chat session...'),
                  ),
                ConsultationLoading() => const Center(
                    child: CircularProgressIndicator(color: AppColors.primary),
                  ),
                ConsultationStreaming(:final messages) => ListView.builder(
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: messages.length,
                    itemBuilder: (context, idx) {
                      final msg = messages[messages.length - 1 - idx];
                      return MessageBubbleWidget(
                        message: msg,
                        isMe: msg.senderId == widget.currentUserId,
                      );
                    },
                  ),
                ConsultationSending(:final messages) => ListView.builder(
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: messages.length,
                    itemBuilder: (context, idx) {
                      final msg = messages[messages.length - 1 - idx];
                      return MessageBubbleWidget(
                        message: msg,
                        isMe: msg.senderId == widget.currentUserId,
                      );
                    },
                  ),
                ConsultationSent(:final messages) => ListView.builder(
                    reverse: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: messages.length,
                    itemBuilder: (context, idx) {
                      final msg = messages[messages.length - 1 - idx];
                      return MessageBubbleWidget(
                        message: msg,
                        isMe: msg.senderId == widget.currentUserId,
                      );
                    },
                  ),
                ConsultationFailed(:final errorMessage) => Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.error_outline, size: 48, color: AppColors.error),
                      const SizedBox(height: 12),
                      Text(errorMessage, style: AppTypography.bodyMedium),
                      const SizedBox(height: 12),
                      ElevatedButton(
                        onPressed: () {
                          context.read<ConsultationBloc>().add(LoadMessagesRequested(widget.consultationId));
                        },
                        child: const Text('Retry connection'),
                      ),
                    ],
                  ),
              },
            ),
          ),
          _buildInputBar(),
        ],
      ),
    );
  }

  Widget _buildInputBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: const BoxDecoration(
        color: AppColors.slate900,
        border: Border(top: BorderSide(color: AppColors.slate800)),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: _messageController,
              decoration: const InputDecoration(
                hintText: 'Type symptoms or messages...',
                border: InputBorder.none,
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                filled: false,
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.send_rounded, color: AppColors.primary),
            onPressed: _sendMessage,
          ),
        ],
      ),
    );
  }

  void _sendMessage() {
    final text = _messageController.text.trim();
    if (text.isEmpty) return;

    // Safety Tier Resolver Gate
    final redFlags = [
      'nyeri dada',
      'chest pain',
      'sulit bernafas',
      'difficulty breathing',
      'ingin bunuh diri',
      'suicidal'
    ];
    final normalized = text.toLowerCase();
    if (redFlags.any((flag) => normalized.contains(flag))) {
      setState(() {
        _emergencyAlerts.add(
          'Bahaya terdeteksi ("$text"). ZavoBot AI menangguhkan proses diagnosa otomatis demi keselamatan Anda. Silakan hubungi nomor gawat darurat klinis 119 segera.',
        );
      });
      _messageController.clear();
      return;
    }

    context.read<ConsultationBloc>().add(
          SendMessageSubmitted(
            consultationId: widget.consultationId,
            senderId: widget.currentUserId,
            text: text,
          ),
        );
    _messageController.clear();
  }

  void _showAlignmentPanel() {
    showModalBottomSheet(
      context: context,
      backgroundColor: AppColors.background,
      builder: (_) => Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('AI Alignment Transparency', style: AppTypography.heading3),
            const SizedBox(height: 12),
            Text(
              'ZavoBot beroperasi di bawah batas suhu 0.7 klinis yang kaku dan secara aktif mengevaluasi keparahan gejala Anda terhadap protokol triase kritis kami. Informasi ini bukan pengganti nasihat medis profesional.',
              style: AppTypography.bodyMedium,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Understand'),
            ),
          ],
        ),
      ),
    );
  }
}
