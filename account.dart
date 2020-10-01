import 'package:flutter/material.dart';

class account extends StatefulWidget {
  @override
  _accountState createState() => _accountState();
}

class _accountState extends State<account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Expanded(
                child: Center(child: Text('Account'))),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding:EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/doctor-strange-1680x1050-dr-stephen-strange-marvel-comics-artwork-14102.jpg'),
                radius: 60.0,
              ),
            ),
            Divider(
              height: 60.0,
            ),
            Text('NAME',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.0,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height:10.0,),
            Text('K.ROHAN',
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 40.0,
              ),
            ),
            SizedBox(height: 30.0,),
            Row(
              children: <Widget>[
                Icon(Icons.email),
                SizedBox(width: 10.0,),
                Text('EMAIL',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 10.0,
                    letterSpacing: 2.0,
                  ),
                ),
              ],
            ),
            SizedBox(height:15.0,),
            Text('rohankotagiri10@gmail.com',
              style: TextStyle(
                color: Colors.blue[700],
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 30.0,),
          ],
        ),
      ),
    );
  }
}
