class DBUserData {
  final String email;
  final String name;
  final String password;

  const DBUserData({
    required this.email,
    required this.name,
    required this.password,
  });

  factory DBUserData.fromFirestore(
    Map<String, dynamic> data,
    // SnapshotOptions? options,
  ) {
    // final data = snapshot.data();
    return DBUserData(
      email: data['email'] as String,
      name: data['name'] as String,
      password: data['password'] as String,
    );
  }

  Map<String, dynamic> toFirestore() {
    return {
      'email': email,
      'name': name,
      'password': password,
    };
  }

  factory DBUserData.fromJson(Map<String, dynamic> json) {
    //TODO remove it in change to firestore handling
    return DBUserData(
      email: json['email'] as String,
      name: json['name'] as String,
      password: json['password'] as String,
    );
  }
}
