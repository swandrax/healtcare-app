import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ConnectionChecker {
  final Connectivity _connectivity;

  ConnectionChecker([Connectivity? connectivity])
      : _connectivity = connectivity ?? Connectivity();

  Future<bool> get isConnected async {
    final result = await _connectivity.checkConnectivity();
    return _isConnectedState(result);
  }

  Stream<bool> get onConnectionChanged {
    return _connectivity.onConnectivityChanged.map(_isConnectedState);
  }

  bool _isConnectedState(List<ConnectivityResult> results) {
    if (results.isEmpty) return false;
    return !results.contains(ConnectivityResult.none);
  }
}
