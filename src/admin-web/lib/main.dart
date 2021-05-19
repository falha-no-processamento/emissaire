import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Émissaire - Messaging Appliance'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                height: 50,
                child: Image.asset('assets/images/logo.jpg',
                    fit: BoxFit.fitHeight),
              ),
              SizedBox(width: 10),
              Text(widget.title),
            ],
          ),
          actions: [
            Row(
              children: [Text('Login'), Icon(Icons.lock_outline)],
            ),
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
                  child: Image.asset(
                      'assets/images/messaging-apps-in-one-place-1.png',
                      fit: BoxFit.fitHeight)),
            ],
          ),
        ));
  }
}
