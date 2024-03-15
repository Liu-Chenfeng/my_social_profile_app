import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MySocialProfile(),
    );
  }
}

class MySocialProfile extends StatefulWidget {
  @override
  _MySocialProfileState createState() => _MySocialProfileState();
}

class _MySocialProfileState extends State<MySocialProfile> {
  String status = "Here is initial status information";

  void _changeStatus() {
    setState(() {
      status = "Status has changed!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Social Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.mood, size: 100),
            Text("Name：Liu Chenfeng", style: TextStyle(fontSize: 24)),
            Text("Location：Vladivostok", style: TextStyle(fontSize: 20)),
            Text("Birthday：January 19", style: TextStyle(fontSize: 20)),
            Text("Hobbies：photography", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            Text("Status：$status", style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic)),
            SizedBox(height: 20),
            TextButton(
              onPressed: _changeStatus,
              child: Text("Change Status"),

            ),
          ],
        ),
      ),
    );
  }
}

