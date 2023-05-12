import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DataPage extends StatefulWidget {
  const DataPage({Key? key}) : super(key: key);

  @override
  _DataPageState createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  final TextEditingController _nameController = TextEditingController();
  String? _data;

  Future<void> _getData() async {
    final QuerySnapshot<Map<String, dynamic>> result = await FirebaseFirestore
        .instance
        .collection('Userdata')
        .where('name', isEqualTo: _nameController.text.trim())
        .get();
    if (result.size > 0) {
      final Map<String, dynamic> data = result.docs.first.data();
      setState(() {
        _data = data.toString();
      });
    } else {
      setState(() {
        _data = 'No data found for name: ${_nameController.text.trim()}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vault'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Name',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                _getData();
              },
              child: const Text('Retrieve Data'),
            ),
            if (_data != null)
              Container(
                margin: const EdgeInsets.all(20),
                child: Text(_data!),
              ),
          ],
        ),
      ),
    );
  }
}
