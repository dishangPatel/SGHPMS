import 'package:flutter/material.dart';
import 'package:project_management_system/Constants.dart';

class AdminCallMeeting extends StatefulWidget {
  @override
  _AdminCallMeetingState createState() => _AdminCallMeetingState();
}

class _AdminCallMeetingState extends State<AdminCallMeeting> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopAdminCallMeeting();
        } else {
          return MobileAdminCallMeeting();
        }
      },
    );
  }
}

class DesktopAdminCallMeeting extends StatefulWidget {
  @override
  _DesktopAdminCallMeetingState createState() =>
      _DesktopAdminCallMeetingState();
}

class _DesktopAdminCallMeetingState extends State<DesktopAdminCallMeeting> {
  bool value = false;
  bool value2 = false;
  bool value3 = false;
  var _date = TextEditingController();
  var _time = TextEditingController();

  Future<String> chooseDate(BuildContext context) async {
    String _selected = "";
    final DateTime _selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(2030),
    );
    if (_selectedDate == null) return "";

    _selected = _selectedDate.toString();
    List<String> dates = _selected.split(" ");
    return dates[0];
  }

  Future<String> chooseTime(BuildContext context) async {
    String _selected = "";
    final TimeOfDay _selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if (_selectedTime == null) return "";

    _selected = _selectedTime.toString();
    List<String> time = _selected.split("TimeOfDay(");
    time = time[1].split(")");
    return time[0];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 300.0,
                    color: Colors.grey[100],
                    child: ListView(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.3,
                                offset: Offset(0, 0.5),
                                color: Colors.black,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Previous Meetings',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Project Completion'),
                                Text(DateTime.now().toString()),
                              ],
                            ),
                            subtitle: Text('Description'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Project Completion'),
                                Text(DateTime.now().toString()),
                              ],
                            ),
                            subtitle: Text('Description'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Project Completion'),
                                Text(DateTime.now().toString()),
                              ],
                            ),
                            subtitle: Text('Description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 300.0,
                    color: Colors.grey[100],
                    child: ListView(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 0.3,
                                offset: Offset(0, 0.5),
                                color: Colors.black,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                'Upcoming Meetings',
                                style: TextStyle(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Project Completion'),
                                Text(DateTime.now().toString()),
                              ],
                            ),
                            subtitle: Text('Description'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Project Completion'),
                                Text(DateTime.now().toString()),
                              ],
                            ),
                            subtitle: Text('Description'),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('Project Completion'),
                                Text(DateTime.now().toString()),
                              ],
                            ),
                            subtitle: Text('Description'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          RaisedButton.icon(
            onPressed: () {
              return showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return StatefulBuilder(
                      builder: (context, setCheckboxState) {
                        return AlertDialog(
                          title: Text('Call Meeting'),
                          content: SingleChildScrollView(
                            child: Form(
                              child: Column(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Text('Select Employees'),
                                      Row(
                                        children: <Widget>[
                                          Checkbox(
                                            value: value,
                                            onChanged: (value) {
                                              setCheckboxState(() {
                                                value = value;
                                              });
                                            },
                                          ),
                                          Text('Emp 1'),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Checkbox(
                                            value: value2,
                                            onChanged: (value) {
                                              setCheckboxState(() {
                                                value2 = value;
                                              });
                                            },
                                          ),
                                          Text('Emp 2'),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Checkbox(
                                            value: value3,
                                            onChanged: (value) {
                                              setCheckboxState(() {
                                                value3 = value;
                                              });
                                            },
                                          ),
                                          Text('Emp 3'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  TextFormField(
                                    maxLines: 4,
                                    decoration: kTextFieldDecoration.copyWith(
                                      labelText: 'Meeting Purpose',
                                      hintText: 'Enter Meeting Purpose',
                                      prefixIcon: Icon(Icons.mode_edit),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Text('Start Date:'),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: InkWell(
                                          onTap: () async {
                                            _date.text =
                                                await chooseDate(context);
                                          },
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: TextFormField(
                                            enabled: false,
                                            keyboardType: TextInputType.text,
                                            controller: _date,
                                            decoration:
                                                kTextFieldDecoration.copyWith(
                                              labelText: 'Select Date',
                                              hintText: 'Select Date',
                                              prefixIcon:
                                                  Icon(Icons.calendar_today),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 2,
                                        child: Text('Start Time:'),
                                      ),
                                      Expanded(
                                        flex: 8,
                                        child: InkWell(
                                          onTap: () async {
                                            _time.text =
                                                await chooseTime(context);
                                          },
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          child: TextFormField(
                                            enabled: false,
                                            keyboardType: TextInputType.text,
                                            controller: _time,
                                            decoration:
                                                kTextFieldDecoration.copyWith(
                                              labelText: 'Select Time',
                                              hintText: 'Select Time',
                                              prefixIcon: Icon(Icons.timer),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('Call Meeting'),
                              textColor: Colors.blueGrey[800],
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: Text('Cancel'),
                              textColor: Colors.blueGrey[800],
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  });
            },
            color: Colors.blueGrey[800],
            textColor: Colors.white,
            icon: Icon(Icons.alarm_add),
            label: Text('Call Meeting'),
          ),
        ],
      ),
    );
  }
}

class MobileAdminCallMeeting extends StatefulWidget {
  @override
  _MobileAdminCallMeetingState createState() => _MobileAdminCallMeetingState();
}

class _MobileAdminCallMeetingState extends State<MobileAdminCallMeeting> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
