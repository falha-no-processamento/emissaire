class LoginInput {
  final String usuario;
  final String senha;

  LoginInput({this.usuario, this.senha});

  factory LoginInput.fromJson(Map<String, dynamic> json) {
    return LoginInput(usuario: json['usuario'], senha: json['senha']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['usuario'] = usuario;
    data['senha'] = senha;
    return data;
  }
}
