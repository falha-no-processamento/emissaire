import 'package:emissaire_web/views/home_connected_view.dart';
import 'package:emissaire_web/views/home_disconnected_view.dart';
import 'package:emissaire_web/views/login_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Émissaire',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: HomeView(),
      initialRoute: '/',
      routes: {
        '/': (context) => HomeDisconnectedView(),
        '/homeconnected': (context) => HomeConnectedView(),
        '/login': (context) => LoginView(),
      },
    );
  }
}
