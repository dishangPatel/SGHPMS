import 'package:flutter/material.dart';
import 'package:project_management_system/constans.dart';

class AddProject extends StatefulWidget {
  @override
  _AddProjectState createState() => _AddProjectState();
}

class _AddProjectState extends State<AddProject> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopAddProject();
        } else {
          return MobileAddProject();
        }
      },
    );
  }
}

class DesktopAddProject extends StatefulWidget {
  @override
  _DesktopAddProjectState createState() => _DesktopAddProjectState();
}

class _DesktopAddProjectState extends State<DesktopAddProject> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    var height = media.size.height;
    var _firstDate = ValueNotifier<DateTime>(DateTime.now());
    var _startDate = TextEditingController();
    var _endDate = TextEditingController();
    var dropvalue;

    List<String> managerList = [
      'Parth',
      'Dishang',
      'Nikhil',
      'Faizal',
      'Bhavik',
      'Nisarg'
    ];

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: StatefulBuilder(
        builder: (context, setDropDownState) {
          return Container(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 250.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: kTextFieldDecoration.copyWith(
                        labelText: 'Project Name',
                        hintText: 'Enter Project Name',
                        prefixIcon: Icon(Icons.title),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      maxLines: 4,
                      decoration: kTextFieldDecoration.copyWith(
                        border: OutlineInputBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(width * 0.001)),
                        ),
                        labelText: 'Description',
                        hintText: 'Enter Project Description',
                        prefixIcon: Icon(Icons.description),
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
                              _firstDate.value = DateTime.now();
                              final _selectedDate = await showDatePicker(
                                context: context,
                                initialDate: _firstDate.value,
                                firstDate: DateTime.now(),
                                lastDate: DateTime(2023),
                              );

                              if (_selectedDate != null) {
                                _firstDate.value = _selectedDate;

                                List<String> date =
                                    _selectedDate.toString().split(" ");
                                _startDate.text = date[0];
                              }
                            },
                            borderRadius: BorderRadius.circular(width * 0.02),
                            child: TextFormField(
                              enabled: false,
                              keyboardType: TextInputType.text,
                              controller: _startDate,
                              decoration: kTextFieldDecoration.copyWith(
                                labelText: 'Select Date',
                                hintText: 'Select Date',
                                prefixIcon: Icon(Icons.calendar_today),
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
                          child: Text('End Date:'),
                        ),
                        Expanded(
                          flex: 8,
                          child: InkWell(
                            onTap: () async {
                              final _selectedDate = await showDatePicker(
                                context: context,
                                initialDate: _firstDate.value,
                                firstDate: _firstDate.value,
                                lastDate: DateTime(2023),
                              );

                              if (_selectedDate != null) {
                                _firstDate.value = _selectedDate;

                                List<String> date =
                                    _selectedDate.toString().split(" ");
                                _endDate.text = date[0];
                              }
                            },
                            borderRadius: BorderRadius.circular(width * 0.02),
                            child: TextFormField(
                              enabled: false,
                              keyboardType: TextInputType.text,
                              controller: _endDate,
                              decoration: kTextFieldDecoration.copyWith(
                                labelText: 'Select Date',
                                hintText: 'Select Date',
                                prefixIcon: Icon(Icons.calendar_today),
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
                          child: Text('Assign Project To:'),
                        ),
                        Expanded(
                          flex: 8,
                          child: DropdownButtonFormField<String>(
                            value: dropvalue,
                            onSaved: (value) => dropvalue = value,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: width * 0.02,
                            hint: Text('Select Manager'),
                            elevation: (width * 0.06).toInt(),
                            isExpanded: true,
                            items: managerList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setDropDownState(() {
                                dropvalue = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    SizedBox(
                      width: width * 0.15,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                              child: Text(
                                'Create',
                                style: TextStyle(
                                  fontSize: width * 0.0125,
                                  color: Colors.blueGrey[800],
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: FlatButton(
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: width * 0.0125,
                                  color: Colors.blueGrey[800],
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class MobileAddProject extends StatefulWidget {
  @override
  _MobileAddProjectState createState() => _MobileAddProjectState();
}

class _MobileAddProjectState extends State<MobileAddProject> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    var height = media.size.height;

    var _startDate = TextEditingController();
    var _endDate = TextEditingController();
    var dropvalue;

    List<String> managerList = [
      'Parth',
      'Dishang',
      'Nikhil',
      'Faizal',
      'Bhavik',
      'Nisarg'
    ];

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

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.close,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
      body: Container(
        child: Form(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: kTextFieldDecoration.copyWith(
                    labelText: 'Project Name',
                    hintText: 'Enter Project Name',
                    prefixIcon: Icon(Icons.title),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  maxLines: 4,
                  decoration: kTextFieldDecoration.copyWith(
                    border: OutlineInputBorder(
                      borderRadius:
                          BorderRadius.all(Radius.circular(width * 0.001)),
                    ),
                    labelText: 'Description',
                    hintText: 'Enter Project Description',
                    prefixIcon: Icon(Icons.description),
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
                          _startDate.text = await chooseDate(context);
                        },
                        borderRadius: BorderRadius.circular(width * 0.02),
                        child: TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.text,
                          controller: _startDate,
                          decoration: kTextFieldDecoration.copyWith(
                            labelText: 'Select Date',
                            hintText: 'Select Date',
                            prefixIcon: Icon(Icons.calendar_today),
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
                      child: Text('End Date:'),
                    ),
                    Expanded(
                      flex: 8,
                      child: InkWell(
                        onTap: () async {
                          _endDate.text = await chooseDate(context);
                        },
                        borderRadius: BorderRadius.circular(width * 0.02),
                        child: TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.text,
                          controller: _endDate,
                          decoration: kTextFieldDecoration.copyWith(
                            labelText: 'Select Date',
                            hintText: 'Select Date',
                            prefixIcon: Icon(Icons.calendar_today),
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
                      child: Text('Assign Project To:'),
                    ),
                    Expanded(
                      flex: 8,
                      child: DropdownButtonFormField<String>(
                        value: dropvalue,
                        onSaved: (value) => dropvalue = value,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: width * 0.02,
                        hint: Text('Select Manager'),
                        elevation: (width * 0.01).toInt(),
                        isExpanded: true,
                        items: managerList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            dropvalue = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50.0,
                ),
                SizedBox(
                  width: width * 0.15,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: FlatButton(
                          child: Text(
                            'Create',
                            style: TextStyle(
                              fontSize: width * 0.0125,
                              color: Colors.blueGrey[800],
                            ),
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Expanded(
                        child: FlatButton(
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                              fontSize: width * 0.0125,
                              color: Colors.blueGrey[800],
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
