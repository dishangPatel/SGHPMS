import 'package:flutter/material.dart';

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
  _DesktopAdminCallMeetingState createState() => _DesktopAdminCallMeetingState();
}

class _DesktopAdminCallMeetingState extends State<DesktopAdminCallMeeting> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Call Meeting'),
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
