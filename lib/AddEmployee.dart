import 'package:flutter/material.dart';
// import 'package:project_management_system/AddProject.dart';
import 'Constants.dart';


class AddEmployee extends StatefulWidget {
  @override
  _AddEmployeeState createState() => _AddEmployeeState();
}

class _AddEmployeeState extends State<AddEmployee> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: 
      (context, constraints){
        if(constraints.maxWidth > 800)
        {
          return DesktopAddEmployee();
        }
        else
        {
          return MobileAddEmployee();
        }
      },
    );
  }
}

class DesktopAddEmployee extends StatefulWidget {
  @override
  _DesktopAddEmployeeState createState() => _DesktopAddEmployeeState();
}

class _DesktopAddEmployeeState extends State<DesktopAddEmployee> {
  @override
  Widget build(BuildContext context) {

    String validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password too short';
    }
    return null;
  }

    final addEmployeeFormKey = GlobalKey<FormState>(); 
    bool addEmployeeFormAutoValidation = false;
    String emailID='',
    password='',
    confirmPassword='',
    fname='',
    lname='',
    post='',
    field='',
    mobileNo='',
    address='';
    
    List<String> postList = [
      'Developer',
      'Team Leader',
      'Project Manager',
    ];

    List<String> fieldList = ['Development','QA'];
    var media = MediaQuery.of(context);
    var width = media.size.width;
    var height = media.size.height;
    var dropPost,dropField;

    return Scaffold(
      body: StatefulBuilder(
        builder: (context, setDropDownState){
          return Container(
           child: Form(
             key: addEmployeeFormKey,
             autovalidate: addEmployeeFormAutoValidation, 
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 250.0, vertical: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Employee's Details",
                      style: TextStyle(fontSize: 35.0),
                    ),
                    SizedBox(height: 30.0,),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (value) => fname = value,
                      
                      decoration: kTextFieldDecoration.copyWith(
                        labelText: 'First Name',
                        hintText: 'Enter First Name',
                        prefixIcon: Icon(Icons.title),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (value)=>lname=value,
                      decoration: kTextFieldDecoration.copyWith(
                        labelText:'Last Name',
                        hintText: 'Enter Last Name',
                        prefixIcon: Icon(Icons.title),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onSaved: (value)=>emailID=value,
                      decoration: kTextFieldDecoration.copyWith(
                        labelText:'Email Address',
                        hintText: 'Enter email address',
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                      obscureText: true,
                      validator: validatePassword,
                      onSaved: (value)=>password=value.trim(),
                      decoration: kTextFieldDecoration.copyWith(
                        labelText:'Password',
                        hintText: 'Enter Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextFormField(
                       obscureText: true,
                       validator: (value){
                            confirmPassword = value.trim();
                           if(confirmPassword==password)
                           {
                             return null;
                           }
                           else{
                             return "passwords does not match";
                           }
                       }, 
                       onSaved: (newValue) => confirmPassword=newValue.trim(),     
                       decoration: kTextFieldDecoration.copyWith(
                         labelText:'Confirm Password',
                         hintText: 'Enter Confirm Password',
                         prefixIcon: Icon(Icons.lock),
                       ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Text('Assign Post:'),
                    ),
                    Expanded(
                      flex: 8,
                      child: DropdownButtonFormField<String>(
                        value: dropPost,
                        onSaved: (value) => dropPost = value,
                        icon: Icon(Icons.arrow_drop_down),
                        iconSize: width * 0.02,
                        hint: Text('Select Post'),
                        elevation: (width * 0.01).toInt(),
                        isExpanded: true,
                        items: postList
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setDropDownState(() {
                            dropPost = value;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Text('Field:'),
                      ),
                      Expanded(
                        flex: 8,
                        child: DropdownButtonFormField<String>(
                          value: dropField,
                            onSaved: (value) => dropField = value,
                            icon: Icon(Icons.arrow_drop_down),
                            iconSize: width * 0.02,
                            hint: Text('Select Field'),
                            elevation: (width * 0.06).toInt(),
                            isExpanded: true,
                            items: fieldList
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setDropDownState(() {
                                dropField = value;
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    SizedBox(
                      width: width * 0.15,
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: FlatButton(
                               hoverColor: Colors.blueGrey,
                              child: Text(
                                'Create',
                                style: TextStyle(
                                  fontSize: width * 0.0125,
                                  color: Colors.blueGrey[800],
                                ),
                              ),
                              onPressed: () {},
                            ),
                          ),
                          Expanded(
                            child: FlatButton(
                              hoverColor: Colors.red[200],
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: width * 0.0125,
                                  color: Colors.blueGrey[800],
                                ),
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
    );
  }
}

class MobileAddEmployee extends StatefulWidget {
  @override
  _MobileAddEmployeeState createState() => _MobileAddEmployeeState();
}

class _MobileAddEmployeeState extends State<MobileAddEmployee> {
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}