import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   onPressed: () {
          //     print('drawer');
          //   },
          // ),
          title: Text('Appbar Demo'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () {},
            )
          ],
          flexibleSpace: SafeArea(
            child: Icon(
              Icons.camera,
              color: Colors.white,
              size: 55.0,
            ),
          ),
          bottom: PreferredSize(
              child: Container(
                color: Colors.grey,
                height: 75.0,
                width: double.infinity,
                child: Text(
                  'Tutor ',
                  style: TextStyle(color: Colors.white, fontSize: 35.0),
                ),
              ),
              preferredSize: Size.fromHeight(75.0))),
      body: Center(
        child: Text(
          'hello',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.green,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            letterSpacing: 1.5,
            backgroundColor: Colors.yellow,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 10.0,
        child: Icon(Icons.add),
        onPressed: () {
          print('Tutor Joes Click');
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Tutor Joes'),
              accountEmail: Text('tutrjoes@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('Xyz'),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('Xyz'),
                ),
              ],
            ),
            ListTile(
              title: Text('All Inbox'),
              leading: Icon(Icons.mail),
            ),
            Divider(
              height: 0.4,
            ),
            ListTile(
              title: Text('Social'),
              leading: Icon(Icons.people),
            ),
          ],
        ),
      ),
    );
  }
}
