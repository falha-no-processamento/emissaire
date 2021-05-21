import 'package:flutter/material.dart';

class HomeConnectedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                currentAccountPicture: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('images/avatar.jpg', fit: BoxFit.fill)),
                accountName: Text('Teste'),
                accountEmail: Text('teste@teste.com'),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Início'),
                subtitle: Text('Tela de Início'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/homeconnected');
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Sair'),
                subtitle: Text('Finalizar sessão'),
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/login');
                },
              ),
            ],
          ),
        ),
        appBar: AppBar(
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your messaging appliance!',
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 40),
              Container(
                  height: 300,
                  child: Image.asset('images/messaging-apps-in-one-place-1.png',
                      fit: BoxFit.fitHeight)),
            ],
          ),
        ));
  }
}
