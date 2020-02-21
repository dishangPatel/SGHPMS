import 'package:flutter/material.dart';

class SeachProject extends StatefulWidget {
  @override
  _SeachProjectState createState() => _SeachProjectState();
}

class _SeachProjectState extends State<SeachProject> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopSearchProject();
        } else {
          return MobileSearchProject();
        }
      },
    );
  }
}

class DesktopSearchProject extends StatefulWidget {
  @override
  _DesktopSearchProjectState createState() => _DesktopSearchProjectState();
}

class _DesktopSearchProjectState extends State<DesktopSearchProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        title: new TextField(
          decoration: new InputDecoration(
              prefixIcon: new Icon(Icons.search, color: Colors.white),
              hintText: "Search",
              hintStyle: new TextStyle(color: Colors.white)),
          onSubmitted: null,
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
      body: Container(),
    );
  }
}

class MobileSearchProject extends StatefulWidget {
  @override
  _MobileSearchProjectState createState() => _MobileSearchProjectState();
}

class _MobileSearchProjectState extends State<MobileSearchProject> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}