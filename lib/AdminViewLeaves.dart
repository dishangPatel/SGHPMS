import 'package:flutter/material.dart';

class AdminViewLeaves extends StatefulWidget {
  @override
  _AdminViewLeavesState createState() => _AdminViewLeavesState();
}

class _AdminViewLeavesState extends State<AdminViewLeaves> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopAdminViewLeaves();
        } else {
          return MobileAdminViewLeaves();
        }
      },
    );
  }
}

class DesktopAdminViewLeaves extends StatefulWidget {
  @override
  _DesktopAdminViewLeavesState createState() => _DesktopAdminViewLeavesState();
}

class _DesktopAdminViewLeavesState extends State<DesktopAdminViewLeaves> {
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
                        'Leave Applications',
                        style: TextStyle(
                          fontSize: width * 0.015,
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
                            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 5,
                                      child: Text(
                                        'Employee Name',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton.icon(
                                            onPressed: () {},
                                            hoverColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.check,
                                              color: Colors.green,
                                            ),
                                            label: Text(
                                              'Accept',
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
                                              'Reject',
                                              style: TextStyle(
                                                fontSize: width * 0.0125,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'From - Till',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Reason',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
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
                            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 5,
                                      child: Text(
                                        'Employee Name',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton.icon(
                                            onPressed: () {},
                                            hoverColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.check,
                                              color: Colors.green,
                                            ),
                                            label: Text(
                                              'Accept',
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
                                              'Reject',
                                              style: TextStyle(
                                                fontSize: width * 0.0125,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'From - Till',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Reason',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
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
                            padding: EdgeInsets.fromLTRB(20.0, 0, 20.0, 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Expanded(
                                      flex: 5,
                                      child: Text(
                                        'Employee Name',
                                        style: TextStyle(
                                          fontSize: width * 0.0125,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: <Widget>[
                                          FlatButton.icon(
                                            onPressed: () {},
                                            hoverColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.check,
                                              color: Colors.green,
                                            ),
                                            label: Text(
                                              'Accept',
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
                                              'Reject',
                                              style: TextStyle(
                                                fontSize: width * 0.0125,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  'From - Till',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Reason',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
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

class MobileAdminViewLeaves extends StatefulWidget {
  @override
  _MobileAdminViewLeavesState createState() => _MobileAdminViewLeavesState();
}

class _MobileAdminViewLeavesState extends State<MobileAdminViewLeaves> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
