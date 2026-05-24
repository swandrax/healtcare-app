class UserDto {
  final String id;
  final String email;
  final String role;

  const UserDto({
    required this.id,
    required this.email,
    required this.role,
  });

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      id: json['id'] as String,
      email: json['email'] as String,
      role: (json['role'] ?? 'pasien') as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'role': role,
    };
  }
}
