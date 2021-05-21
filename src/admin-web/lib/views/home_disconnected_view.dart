import 'package:flutter/material.dart';

class HomeDisconnectedView extends StatelessWidget {
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
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/login');
              },
              child: Row(
                children: [
                  Text(
                    'Login',
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.lock_outline,
                    color: Colors.white,
                  )
                ],
              )),
        ],
      ),
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
      ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.plus_one),
      //   onPressed: () {},
      // ),
    );
  }
}
