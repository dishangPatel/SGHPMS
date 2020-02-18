import 'package:flutter/material.dart';
import 'package:project_management_system/AdminCallMeeting.dart';
import 'package:project_management_system/AdminEmployees.dart';
import 'package:project_management_system/AdminProjects.dart';
import 'package:project_management_system/AdminViewComplains.dart';
import 'package:project_management_system/AdminViewLeaves.dart';

class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopAdminDashboard();
        } else {
          return MobileAdminDashboard();
        }
      },
    );
  }
}

class DesktopAdminDashboard extends StatefulWidget {
  @override
  _DesktopAdminDashboardState createState() => _DesktopAdminDashboardState();
}

class _DesktopAdminDashboardState extends State<DesktopAdminDashboard> with SingleTickerProviderStateMixin {
  

  TabController tabController;
  
  @override
  void initState() {
    tabController = new TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    var height = media.size.height;

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Container(
                height: height,
                color: Colors.lightBlue,
                padding: EdgeInsets.symmetric(vertical: height * 0.02, horizontal: width  * 0.02),
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: width * 0.03,
                            backgroundColor: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Name',
                            style: TextStyle(
                              fontSize: width * 0.0125,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Post',
                            style: TextStyle(
                              fontSize: width * 0.0125,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Divider(),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton.icon(
                            onPressed: () {
                              tabController.animateTo(0);
                            },
                            hoverColor: Colors.transparent,
                            icon: Icon(
                              Icons.group_work,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Projects',
                              style: TextStyle(
                                fontSize: width * 0.0125,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton.icon(
                            onPressed: () {
                              tabController.animateTo(1);
                            },
                            hoverColor: Colors.transparent,
                            icon: Icon(
                              Icons.group,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Employees',
                              style: TextStyle(
                                fontSize: width * 0.0125,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton.icon(
                            onPressed: () {
                              tabController.animateTo(2);
                            },
                            hoverColor: Colors.transparent,
                            icon: Icon(
                              Icons.call,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Call Meeting',
                              style: TextStyle(
                                fontSize: width * 0.0125,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton.icon(
                            onPressed: () {
                              tabController.animateTo(3);
                            },
                            hoverColor: Colors.transparent,
                            icon: Icon(
                              Icons.report,
                              color: Colors.white,
                            ),
                            label: Text(
                              'View Complains',
                              style: TextStyle(
                                fontSize: width * 0.0125,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton.icon(
                            onPressed: () {
                              tabController.animateTo(4);
                            },
                            hoverColor: Colors.transparent,
                            icon: Icon(
                              Icons.time_to_leave,
                              color: Colors.white,
                            ),
                            label: Text(
                              'View Leaves',
                              style: TextStyle(
                                fontSize: width * 0.0125,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          FlatButton.icon(
                            onPressed: () {},
                            hoverColor: Colors.transparent,
                            icon: Icon(
                              Icons.exit_to_app,
                              color: Colors.white,
                            ),
                            label: Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: width * 0.0125,
                                color: Colors.white,
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
            Expanded(
              flex: 14,
              child: Container(
                height: height,
                color: Colors.grey[300],
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: tabController,
                  children:[
                    DesktopAdminProjects(),
                    DesktopAdminEmployees(),
                    DesktopAdminCallMeeting(),
                    DesktopAdminViewComplains(),
                    DesktopAdminViewLeaves(),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MobileAdminDashboard extends StatefulWidget {
  @override
  _MobileAdminDashboardState createState() => _MobileAdminDashboardState();
}

class _MobileAdminDashboardState extends State<MobileAdminDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mobile'),
      ),
    );
  }
}
