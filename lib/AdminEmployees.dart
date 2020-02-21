import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'AddEmployee.dart';

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

class Fields extends StatelessWidget {
  final double width;
  final String fieldname;
  final String value;

  Fields({this.width, this.fieldname, this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Text(
          fieldname + ': ',
          style: TextStyle(
            fontSize: width * 0.012,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: width * 0.012,
          ),
        ),
      ],
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

    viewEmployee() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Employee Details'),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  'Close',
                  style: TextStyle(
                    color: Colors.blueGrey[800],
                  ),
                ),
              )
            ],
            content: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Fields(
                          width: width,
                          fieldname: 'Employee Id',
                          value: '125',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Fields(
                          width: width,
                          fieldname: 'Employee Name',
                          value: 'Parth Pansuriya',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Fields(
                          width: width,
                          fieldname: 'Post',
                          value: 'Project Manager',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Fields(
                          width: width,
                          fieldname: 'Field',
                          value: 'UX Design',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Fields(
                          width: width,
                          fieldname: 'Skill Set',
                          value: 'Java, c++, Python',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Fields(
                          width: width,
                          fieldname: 'Experience',
                          value: '5 Years',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Fields(
                          width: width,
                          fieldname: 'Joining Date',
                          value: '20-12-2014',
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: CircleAvatar(
                            radius: width * 0.03,
                            backgroundImage: NetworkImage(
                                "https://insomniac.games/wp-content/uploads/2018/09/Spider-Man_PS4_Selfie_Photo_Mode_LEGAL.jpg"),
                          ),
                          width: width * 0.065,
                          height: width * 0.065,
                          padding: EdgeInsets.all(width * 0.001),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.3),
                                  offset: Offset(0, width * 0.0015),
                                  blurRadius: width * 0.008,
                                ),
                              ]),
                        ),
                        SizedBox(
                          height: 50.0,
                        ),
                        Column(
                          children: <Widget>[
                            Text(
                              'Efficiency',
                              style: TextStyle(
                                fontSize: width * 0.012,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            CircularPercentIndicator(
                              radius: 75.0,
                              lineWidth: 5.0,
                              percent: 0.85,
                              center: new Text("85%"),
                              backgroundColor: Colors.redAccent,
                              progressColor: Colors.greenAccent[700],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
    }

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
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AddEmployee()));
                        },
                        hoverColor: Colors.transparent,
                        icon: Icon(
                          Icons.add_circle_outline,
                          color: Colors.blueGrey[800],
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
                                    onPressed: () {
                                      viewEmployee();
                                    },
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
