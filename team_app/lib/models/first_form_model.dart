import 'package:flutter/material.dart';

class FirstFormModel extends ChangeNotifier {
String? _date;
String? _workout;
int? _time;
 String? get date => this._date;

 set date(String? value) => this._date = value;

 String? get workout => this._workout;

 set workout(String? value) => this._workout = value;

 int? get time => this._time;

 set time(int? value) => this._time = value;
}