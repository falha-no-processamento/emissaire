class LoginOutput {
  final String usuario;
  final String token;

  LoginOutput({this.usuario, this.token});

  factory LoginOutput.fromJson(Map<String, dynamic> json) {
    return LoginOutput(usuario: json['usuario'], token: json['token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usuario'] = usuario;
    data['token'] = token;
    return data;
  }
}
