import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_management_system/Employee.dart';
import 'package:requests/requests.dart';

import 'Constants.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return DesktopLogin();
        } else {
          return MobileLogin();
        }
      },
    );
  }
}

class DesktopLogin extends StatefulWidget {
  @override
  _DesktopLoginState createState() => _DesktopLoginState();
}

class _DesktopLoginState extends State<DesktopLogin> {
  final loginFormKey = GlobalKey<FormState>();
  bool loginFormAutoValidation = false;
  String email = '', password = '';

  String validateEmail(String value) {
    if (value.trim().isEmpty) {
      return 'Email is required';
    }
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Enter valid email';
    }
    return null;
  }

  String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password too short';
    }
    return null;
  }

  void validateForm() {
    if (loginFormKey.currentState.validate()) {
      loginFormKey.currentState.save();
      login();
    } else {
      setState(() {
        loginFormAutoValidation = true;
      });
    }
  }

  void login() async {
    try {
      var response = await Requests.post(
          kBaseUrl + '/signin/',
          json: {"employee_email": email, "employee_password": password});
      response.raiseForStatus();

      if (response.statusCode == 200) {
        var employeeJson = response.json();

        if (!employeeJson["is_error"]) {
          Employee employee = Employee.fromJson(employeeJson);
          employee.setPreference();
          Navigator.pushReplacementNamed(context, '/adminDashboard');
        } else {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text(employeeJson["message"]),duration: Duration(seconds: 2),));
          // Fluttertoast.showToast(
          //     msg: employeeJson["message"],
          //     toastLength: Toast.LENGTH_LONG,
          //     backgroundColor: Colors.red,
          //     textColor: Colors.white,
          //     fontSize: 16.0);
        }
      }
    } on Exception catch (e) {
          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Unable to login. Please try again later'),duration: Duration(seconds: 2),));
      // Fluttertoast.showToast(
      //     msg: 'Unable to login. Please try again later',
      //     toastLength: Toast.LENGTH_LONG,
      //     backgroundColor: Colors.red,
      //     textColor: Colors.white,
      //     fontSize: 16.0);
    }
  }

  void checkSession() async {
    try {
      var response = await Requests.post(
        kBaseUrl + '/session_check/',
      );
      response.raiseForStatus();

      if (response.statusCode == 200) {
        var employeeJson = response.json();

        if (!employeeJson["is_error"]) {
          Employee user = await Employee.fromSharedPreference;
          if (user.email.length > 0) {
            Navigator.pushReplacementNamed(context, '/adminDashboard');
          }
        }
      }
    } on Exception catch (e) {
      Fluttertoast.showToast(
          msg: 'Error. Please try again later',
          toastLength: Toast.LENGTH_LONG,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }

  @override
  void initState() {
    checkSession();
  }

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    var width = media.size.width;
    var height = media.size.height;

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: width,
        height: height,
        child: SingleChildScrollView(
          child: Form(
            key: loginFormKey,
            autovalidate: loginFormAutoValidation,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: width * 0.3),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Project Management System',
                        style: kTextTitle,
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        validator: validateEmail,
                        onSaved: (value) => email = value.trim(),
                        decoration: kTextFieldDecoration.copyWith(
                          labelText: 'Email',
                          hintText: 'Enter your email',
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      TextFormField(
                        obscureText: true,
                        validator: validatePassword,
                        onSaved: (value) => password = value.trim(),
                        decoration: kTextFieldDecoration.copyWith(
                          labelText: 'Password',
                          hintText: 'Enter your password',
                          prefixIcon: Icon(Icons.lock),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      RaisedButton(
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: validateForm,
                        shape: kRoundedBorder,
                        child: Text('LOGIN'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileLogin extends StatefulWidget {
  @override
  _MobileLoginState createState() => _MobileLoginState();
}

class _MobileLoginState extends State<MobileLogin> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
