import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class Employee
{
  String _json, _id, _firstName, _lastName, _email, _post, _fields, _skillSet, _mobile, _address, _displayPicture, _joiningDate;
  int _experience;

  Employee.fromJson(Map<String, dynamic> json)
  {
    _json = jsonEncode(json);
    _id = json["employee_id"];
    _firstName = json["employee_firstname"];
    _lastName = json["employee_lastname"];
    _email = json["employee_email"];
    _post = json["employee_post"];
    _fields = json["fields"];
    _skillSet = json["skill_set"];
    _mobile = json["employee_mobile"];
    _address = json["employee_address"];
    _experience = json["experience"];
    _displayPicture = json["display_picture"];
    _joiningDate = json["joining_date"];
  }

  static Future<Employee> get fromSharedPreference async
  {
    final sharedPreference = await SharedPreferences.getInstance();
    return Employee.fromJson(jsonDecode(sharedPreference.getString("employee")));
  }
  
  void setPreference() async
  {
    final sharedPreference = await SharedPreferences.getInstance();
    sharedPreference.setString("employee", _json);
  }

  String get id => _id;
  String get firstName => _firstName;
  String get lastName => _lastName;
  String get email => _email;
  String get post => _post;
  String get fields => _fields;
  String get skillSet => _skillSet;
  String get mobile => _mobile;
  String get address => _address;
  int get experience => _experience;
  String get displayPicture => _displayPicture;
  String get joiningDate => _joiningDate;
}