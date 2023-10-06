class DBUserData {
  final String email;
  final String name;
  final String password;

  const DBUserData({
    required this.email,
    required this.name,
    required this.password,
  });

  factory DBUserData.fromJson(Map<String, dynamic> json) {
    return DBUserData(
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
    );
  }
}
