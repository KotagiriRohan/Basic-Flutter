import 'package:flutter/material.dart';
import 'package:flutter2/datetime/choose_location.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class Datetime {
  String datetime;
  String location;
  Datetime({String this.location});
  Future<void> date_time() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/${location}');
    Map data = jsonDecode(response.body);
    String dt = data['utc_datetime'];
    String ofsh = data['utc_offset'].substring(1, 3);
    String ofsm = data['utc_offset'].substring(4, 6);
    DateTime now = DateTime.parse(dt);
    now = now.add(Duration(hours: int.parse(ofsh), minutes: int.parse(ofsm)));
    this.datetime = DateFormat.jm().format(now);

  }

}


