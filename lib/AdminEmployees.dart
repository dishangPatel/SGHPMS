import 'package:flutter/material.dart';

class AdminEmployees extends StatefulWidget {
  @override
  _AdminEmployeesState createState() => _AdminEmployeesState();
}

class _AdminEmployeesState extends State<AdminEmployees> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopAdminEmployees();
        } else {
          return MobileAdminEmployees();
        }
      },
    );
  }
}

class DesktopAdminEmployees extends StatefulWidget {
  @override
  _DesktopAdminEmployeesState createState() => _DesktopAdminEmployeesState();
}

class _DesktopAdminEmployeesState extends State<DesktopAdminEmployees> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    var height = media.size.height;

    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
              vertical: height * 0.02, horizontal: width * 0.02),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin:
                          EdgeInsets.fromLTRB(width * 0.0275, 10.0, 0, 15.0),
                      child: Text(
                        'Employees',
                        style: TextStyle(
                          fontSize: width * 0.015,
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(width * 0.02, 0, 0, 0),
                      child: FlatButton.icon(
                        onPressed: () {
                          // addEmployee();
                        },
                        hoverColor: Colors.transparent,
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blue,
                        ),
                        label: Text(
                          'Add Employee',
                          style: TextStyle(
                            fontSize: width * 0.0125,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.025),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Employee Name',
                                      style: TextStyle(
                                        fontSize: width * 0.0125,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Post',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    FlatButton.icon(
                                      onPressed: () {},
                                      hoverColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.view_quilt,
                                        color: Colors.green,
                                      ),
                                      label: Text(
                                        'View',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                        ),
                                      ),
                                    ),
                                    FlatButton.icon(
                                      onPressed: () {},
                                      hoverColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                      ),
                                      label: Text(
                                        'Remove',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.025),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Employee Name',
                                      style: TextStyle(
                                        fontSize: width * 0.0125,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Post',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    FlatButton.icon(
                                      onPressed: () {},
                                      hoverColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.view_quilt,
                                        color: Colors.green,
                                      ),
                                      label: Text(
                                        'View',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                        ),
                                      ),
                                    ),
                                    FlatButton.icon(
                                      onPressed: () {},
                                      hoverColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                      ),
                                      label: Text(
                                        'Remove',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.025),
                      child: InkWell(
                        onTap: () {},
                        child: Card(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Employee Name',
                                      style: TextStyle(
                                        fontSize: width * 0.0125,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Post',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: <Widget>[
                                    FlatButton.icon(
                                      onPressed: () {},
                                      hoverColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.view_quilt,
                                        color: Colors.green,
                                      ),
                                      label: Text(
                                        'View',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                        ),
                                      ),
                                    ),
                                    FlatButton.icon(
                                      onPressed: () {},
                                      hoverColor: Colors.transparent,
                                      icon: Icon(
                                        Icons.cancel,
                                        color: Colors.red,
                                      ),
                                      label: Text(
                                        'Remove',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
      ),
    );
  }
}

class MobileAdminEmployees extends StatefulWidget {
  @override
  _MobileAdminEmployeesState createState() => _MobileAdminEmployeesState();
}

class _MobileAdminEmployeesState extends State<MobileAdminEmployees> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: FlatButton.icon(
                    onPressed: () {},
                    hoverColor: Colors.transparent,
                    icon: Icon(
                      Icons.add_circle_outline,
                      color: Colors.blue,
                    ),
                    label: Text(
                      'Add Employee',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            ListView(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Employee Name',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Post',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FlatButton.icon(
                                  onPressed: () {},
                                  hoverColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.view_quilt,
                                    color: Colors.green,
                                  ),
                                  label: Text(
                                    'View',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                FlatButton.icon(
                                  onPressed: () {},
                                  hoverColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  ),
                                  label: Text(
                                    'Remove',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Employee Name',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Post',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FlatButton.icon(
                                  onPressed: () {},
                                  hoverColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.view_quilt,
                                    color: Colors.green,
                                  ),
                                  label: Text(
                                    'View',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                FlatButton.icon(
                                  onPressed: () {},
                                  hoverColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  ),
                                  label: Text(
                                    'Remove',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: InkWell(
                    onTap: () {},
                    child: Card(
                      child: Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Employee Name',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Post',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                FlatButton.icon(
                                  onPressed: () {},
                                  hoverColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.view_quilt,
                                    color: Colors.green,
                                  ),
                                  label: Text(
                                    'View',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                                FlatButton.icon(
                                  onPressed: () {},
                                  hoverColor: Colors.transparent,
                                  icon: Icon(
                                    Icons.cancel,
                                    color: Colors.red,
                                  ),
                                  label: Text(
                                    'Remove',
                                    style: TextStyle(
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
