import 'package:flutter/material.dart';

class AddSmartBinPage extends StatefulWidget {
  final Function(String) onAdd; // Callback function to add a new smart bin

  const AddSmartBinPage({Key? key, required this.onAdd}) : super(key: key);

  @override
  _AddSmartBinPageState createState() => _AddSmartBinPageState();
}

class _AddSmartBinPageState extends State<AddSmartBinPage> {
  final TextEditingController _locationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Smart Bin'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _locationController,
              decoration: InputDecoration(
                labelText: 'Enter Location',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Call the callback function and navigate back
                widget.onAdd(_locationController.text); // Pass the entered location
                Navigator.pop(context); // Navigate back to the previous page
              },
              child: Text('Done'),
            ),
          ],
        ),
      ),
    );
  }
}