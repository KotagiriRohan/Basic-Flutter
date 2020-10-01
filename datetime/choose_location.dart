
import 'package:flutter/material.dart';
import 'dateclass.dart';

class location extends StatefulWidget {
  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
  List<Datetime> instances = [
    Datetime(location: 'Asia/China'),
    Datetime(location: 'Asia/China'),
    Datetime(location: 'Asia/Kolkata')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
        Expanded(
            child: Center(child: Text('Date and Time'))),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: ListView.builder(
        itemCount: instances.length,
          itemBuilder: (context, index){
          return Card(
            child: ListTile(
              onTap: () async{
                Datetime instance = instances[index];
                await instance.date_time();
                Navigator.pop(context,{'location' : instances[index].location,'time' : instance.datetime});},
              title: Text(instances[index].location),
            ),
          );
          }),
    );
  }
}
