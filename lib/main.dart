import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IDCardPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class IDCardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Digital ID Card'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Card(
          margin: EdgeInsets.all(20),
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [

                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.png'),
                ),
                SizedBox(height: 10),
                Text(
                  'Joy Ronjon Das',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Batch: 61st, Department of CSE',
                  style: TextStyle(color: Colors.grey[700]),
                ),
                SizedBox(height: 10),
                Divider(),
                ListTile(
                  leading: Icon(Icons.badge),
                  title: Text('ID: 0182310012101118'),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text('Email: jdas27980@gmail.com'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone: +8801750087729'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
