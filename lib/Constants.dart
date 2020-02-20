import 'package:flutter/material.dart';

//For Base URL
const kBaseUrl = 'http://52.236.33.218/sghpms';

//For TextTitle Decoration
const kTextTitle = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.w300,
);

//For TextField Decoration
const kTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueGrey, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

//For Round Border
const kRoundedBorder = RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(20.0)));