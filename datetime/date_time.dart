
import 'package:flutter/material.dart';
import 'dateclass.dart';

class time extends StatefulWidget {
  @override
  _timeState createState() => _timeState();
}

class _timeState extends State<time> {

  String finaltime = 'loading';
  void setdatetime() async {
    Datetime instance = Datetime(location:'Asia/China') ;
    await instance.date_time();
    setState(() {
      finaltime = instance.datetime;
    });
  }
@override
  void initState() {
    super.initState();
    setdatetime();
  }
  Map lt = {};
  @override
  Widget build(BuildContext context) {

    lt = lt.isNotEmpty ? lt : ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title:
        Expanded(
            child: Center(child: Text('Date and Time'))),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Column(
        children: <Widget>[
          Text('the time is $finaltime'),
          FlatButton.icon(
              onPressed: () async{
               dynamic result  = await Navigator.pushNamed(context, '/choose_location');},
              icon: Icon( Icons.location_on), label: Text('Edit Location'))
        ],
      ),
    );
  }
}
