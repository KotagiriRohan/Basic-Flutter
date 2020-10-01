import 'package:flutter/material.dart';
import 'package:flutter2/account.dart';
import 'package:flutter2/datetime/date_time.dart';
import 'package:flutter2/datetime/choose_location.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
  '/': (context) {return Rohan();},
      '/account':(context) => account(),
      '/date_time':(context) => time(),
      '/choose_location' : (context) => location(),
  }));
}
class Rohan extends StatefulWidget {
  @override
  _testState createState() => _testState();
}

class _testState extends State<Rohan> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(icon: Icon(Icons.dehaze), onPressed: () {},color: Colors.red[500],),
            Expanded(child: Center(child: Text('Title'))),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton.icon(onPressed: () { Navigator.pushNamed(context, '/account');},
              icon: Icon(Icons.account_circle),
                label: Text('Account',style: TextStyle(color: Colors.grey[500],fontSize: 20.0),),
                color: Colors.grey[800],
              ),
              FlatButton.icon(onPressed: () { Navigator.pushNamed(context, '/date_time');},
                  icon: Icon(Icons.access_time),
                  label: Text('Time',style: TextStyle(color: Colors.grey[800],fontSize: 20.0),),
                  color: Colors.grey[500],),

            ],
          ),
          Center(
              child: Text('Number of clicks',
              style: TextStyle(
                color: Colors.grey[500],
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
              ),
              ),
            ),
          Center(
            child: Text('$num',
            style: TextStyle(
                color: Colors.grey[500],
                fontSize: 30.0,
                fontStyle: FontStyle.italic,
            ),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              num += 1;
            });
          },
          child: Text('click'),
          backgroundColor: Colors.deepOrange,
        ),
      backgroundColor: Colors.black,
      );
  }
}
