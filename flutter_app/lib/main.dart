import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'garbage_level.dart'; // Import the new garbage level page

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Garbage Level Monitor',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Garbage Level Monitor'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to the garbage level page when the button is clicked
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GarbageLevelPage()),
            );
          },
          child: Text('Smart Bin Level'),
        ),
      ),
    );
  }
}
