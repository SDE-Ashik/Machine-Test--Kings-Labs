


class LoginModel {
  final String username;
  final String password;
  final int? expiresInMins; // optional field

  LoginModel({
    required this.username,
    required this.password,
    this.expiresInMins, // default can be provided if needed
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {
      "username": username,
      "password": password,
    };
    if (expiresInMins != null) {
      data["expiresInMins"] = expiresInMins;
    }
    return data;
  }
}
