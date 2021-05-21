import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                Container(
                  height: 50,
                  child: Image.asset('images/logo.jpg', fit: BoxFit.fitHeight),
                ),
                SizedBox(width: 10),
                Text('Émissaire - Messaging Appliance'),
              ],
            )),
        body: Center(
          child: Container(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(labelText: 'Usuário'),
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Senha'),
                  obscureText: true,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue,
                  ),
                  child: TextButton(
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed('/homeconnected');
                    },
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
