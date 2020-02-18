import 'package:flutter/material.dart';

class AdminViewComplains extends StatefulWidget {
  @override
  _AdminViewComplainsState createState() => _AdminViewComplainsState();
}

class _AdminViewComplainsState extends State<AdminViewComplains> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopAdminViewComplains();
        } else {
          return MobileAdminViewComplains();
        }
      },
    );
  }
}

class DesktopAdminViewComplains extends StatefulWidget {
  @override
  _DesktopAdminViewComplainsState createState() =>
      _DesktopAdminViewComplainsState();
}

class _DesktopAdminViewComplainsState extends State<DesktopAdminViewComplains> {
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
                        'Complains',
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
                                      'Complainer Name',
                                      style: TextStyle(
                                        fontSize: width * 0.0125,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Start Date - End Date',
                                      style: TextStyle(
                                        fontSize: width * 0.01,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Project Name',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Description',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Remarks',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                      'Complainer Name',
                                      style: TextStyle(
                                        fontSize: width * 0.0125,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Start Date - End Date',
                                      style: TextStyle(
                                        fontSize: width * 0.01,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Project Name',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Description',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    hintText: 'Remarks',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                      'Complainer Name',
                                      style: TextStyle(
                                        fontSize: width * 0.0125,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      'Start Date - End Date',
                                      style: TextStyle(
                                        fontSize: width * 0.01,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Project Name',
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Description',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: width * 0.01,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Remarks',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
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

class MobileAdminViewComplains extends StatefulWidget {
  @override
  _MobileAdminViewComplainsState createState() =>
      _MobileAdminViewComplainsState();
}

class _MobileAdminViewComplainsState extends State<MobileAdminViewComplains> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
