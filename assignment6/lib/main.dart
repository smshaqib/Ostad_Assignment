import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ContactListPage(),

      debugShowCheckedModeBanner: false,
    );
  }
}

class ContactListPage extends StatefulWidget {
  @override
  _ContactListPageState createState() => _ContactListPageState();
}

class _ContactListPageState extends State<ContactListPage> {
  final List<Map<String, String>> _contacts = [];
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();

  void _addContact() {
    final String name = _nameController.text;
    final String number = _numberController.text;

    if (name.isNotEmpty && number.isNotEmpty) {
      setState(() {
        _contacts.add({'name': name, 'number': number});
      });

      _nameController.clear();
      _numberController.clear();
    }
  }

  void _deleteContact(int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Confirmation'),
          content: Text('Are you sure for Delete?'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.cancel),
              color: Colors.blue,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              color: Colors.blue,
              onPressed: () {
                setState(() {
                  _contacts.removeAt(index);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact List'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _numberController,
              decoration: InputDecoration(
                labelText: 'Number',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          SizedBox(
            width: 390,
            height: 50.0,
            child: ElevatedButton(
              onPressed: _addContact,
              child: Text('Add',),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.blueGrey, // Text color
              ),
            ),
          ),

          SizedBox(

            height: 30,


          ),
          Expanded(
            child: ListView.builder(
              itemCount: _contacts.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.account_circle,
                      size: 40.0,
                      color: Colors.brown,
                    ),
                    title: Text(
                      _contacts[index]['name']!,
                      style: TextStyle(
                        color: Colors.red ,
                      ),
                    ),
                    subtitle: Text(_contacts[index]['number']!),
                    trailing: Icon(
                      Icons.call,
                      color: Colors.blue,
                    ),
                    onLongPress: () => _deleteContact(index),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
