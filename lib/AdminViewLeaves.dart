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
                DataTable(
                  columns: [
                    DataColumn(label: Text('Employee Name')),
                    DataColumn(label: Text('Reason')),
                    DataColumn(label: Text('Start Date')),
                    DataColumn(label: Text('End Date')),
                    DataColumn(label: Text('View More')),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('Parth')),
                      DataCell(Text('Sister\'s Engagement')),
                      DataCell(Text('12-01-2020')),
                      DataCell(Text('16-01-2020')),
                      DataCell(Icon(Icons.more_horiz)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Parth')),
                      DataCell(Text('Sister\'s Engagement')),
                      DataCell(Text('12-01-2020')),
                      DataCell(Text('16-01-2020')),
                      DataCell(Icon(Icons.more_horiz)),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('Parth')),
                      DataCell(Text('Sister\'s Engagement')),
                      DataCell(Text('12-01-2020')),
                      DataCell(Text('16-01-2020')),
                      DataCell(Icon(Icons.more_horiz)),
                    ]),
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
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
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
                            Text(
                              'Employee Name',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'From - Till',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Reason',
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
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  label: Text(
                                    'Accept',
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
                                    'Reject',
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
                            Text(
                              'Employee Name',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'From - Till',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Reason',
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
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  label: Text(
                                    'Accept',
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
                                    'Reject',
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
                            Text(
                              'Employee Name',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'From - Till',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              'Reason',
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
                                    Icons.check,
                                    color: Colors.green,
                                  ),
                                  label: Text(
                                    'Accept',
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
                                    'Reject',
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
