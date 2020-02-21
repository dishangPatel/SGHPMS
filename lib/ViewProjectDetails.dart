import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:project_management_system/Constants.dart';

class ViewProjectDetails extends StatefulWidget {
  @override
  _ViewProjectDetailsState createState() => _ViewProjectDetailsState();
}

class _ViewProjectDetailsState extends State<ViewProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopViewProjectDetails();
        } else {
          return MobileViewProjectDetails();
        }
      },
    );
  }
}

class DesktopViewProjectDetails extends StatefulWidget {
  @override
  _DesktopViewProjectDetailsState createState() =>
      _DesktopViewProjectDetailsState();
}

class _DesktopViewProjectDetailsState extends State<DesktopViewProjectDetails> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    var height = media.size.height;

    return Scaffold(
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Project Management System',
                            style: kTextTitle.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Project Manager: ',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Dishang Patel',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Start Date: ',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '20-02-2020',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'End Date: ',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                '25-02-2021',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Description: ',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                'Project Management System Desciption',
                                style: TextStyle(
                                  fontSize: width * 0.012,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      CircularPercentIndicator(
                        radius: 150.0,
                        lineWidth: 10.0,
                        percent: 0.85,
                        center: new Text("85%"),
                        backgroundColor: Colors.redAccent,
                        progressColor: Colors.greenAccent[700],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60.0,
                  ),
                  DataTable(
                    columnSpacing: 120.0,
                    columns: [
                      DataColumn(
                        label: Text(
                          'Team Leader',
                          style: TextStyle(
                            fontSize: width * 0.012,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Field/post',
                          style: TextStyle(
                            fontSize: width * 0.012,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DataColumn(
                        label: Text(
                          'Team Size',
                          style: TextStyle(
                            fontSize: width * 0.012,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                    rows: [
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              'Parth',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              'Design',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              'Bhavik',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              'DB',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        cells: [
                          DataCell(
                            Text(
                              'Parth',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              'Design',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              '3',
                              style: TextStyle(
                                fontSize: width * 0.012,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileViewProjectDetails extends StatefulWidget {
  @override
  _MobileViewProjectDetailsState createState() =>
      _MobileViewProjectDetailsState();
}

class _MobileViewProjectDetailsState extends State<MobileViewProjectDetails> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
