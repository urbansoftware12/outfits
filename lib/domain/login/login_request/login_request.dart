// ignore_for_file: unnecessary_getters_setters

class LoginRequest {
  String? _email;
  String? _password;

  LoginRequest({
    String? email,
    String? password,
  }) {
    if (email != null) {
      _email = email;
    }
    if (password != null) {
      _password = password;
    }
  }

  String? get email => _email;

  set email(String? email) => _email = email;

  String? get password => _password;

  set password(String? password) => _password = password;

  LoginRequest.fromJson(Map<String, dynamic> json) {
    _email = json['email'];
    _password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = _email;
    data['password'] = _password;
    return data;
  }
}
