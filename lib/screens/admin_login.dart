

import 'dart:math';

import '../screens/user_products_screen.dart';
/**
* Author: Damodar Lohani
* profile: https://github.com/lohanidamodar
*/

import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  static const routeName = '/AdminLogin';

  @override
  _AdminLoginState createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final _formKey=GlobalKey<FormState>();

  void _trySubmit(){
    final isValid= _formKey.currentState.validate();
    
  
    if(isValid){
      _formKey.currentState.save();
       Navigator.of(context).pushNamed(UserProductsScreen.routeName);
      // print(_email1);
      // print(_pass1);
      
    }
  }

  String _email1 ='yash@admin.com';

  String _pass1 = 'yash';

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
                  child: Column(
            children: <Widget>[
              Container(
                width: width,
                height: height,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.indigoAccent, Colors.deepPurple],
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(top: 40.0, bottom: 20.0),
                      height: 80,
                    ),
                    Text(
                      "Admin",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 40.0),
                    TextFormField(
                      validator: (value) {
                        if (value == _email1) {
                          return null;
                        } 
                        return "Wrong Email";
                      },
                      onSaved: (value){
                        _email1=value;

                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        prefixIcon: Container(
                            padding:
                                const EdgeInsets.only(top: 16.0, bottom: 16.0),
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                    bottomRight: Radius.circular(10.0))),
                            child: Icon(
                              Icons.person,
                              color: Colors.lightBlue,
                            )),
                        hintText: "enter your email",
                        hintStyle: TextStyle(color: Colors.white54),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                      ),
                    ),
                    SizedBox(height: 10.0),
                    TextFormField(
                      validator: (value) {
                        if (value == _pass1) {
                          return null;
                        } 
                        return 'Wrong Pass';
                      },
                       onSaved: (value){
                        _pass1=value;

                      },
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(16.0),
                        prefixIcon: Container(
                            padding:
                                const EdgeInsets.only(top: 16.0, bottom: 16.0),
                            margin: const EdgeInsets.only(right: 8.0),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30.0),
                                    bottomLeft: Radius.circular(30.0),
                                    topRight: Radius.circular(30.0),
                                    bottomRight: Radius.circular(10.0))),
                            child: Icon(
                              Icons.lock,
                              color: Colors.lightBlue,
                            )),
                        hintText: "enter your password",
                        hintStyle: TextStyle(color: Colors.white54),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.1),
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 30.0),
                    SizedBox(
                      width: double.infinity,
                      child: RaisedButton(
                        color: Colors.white,
                        textColor: Colors.lightBlue,
                        padding: const EdgeInsets.all(20.0),
                        child: Text("Login".toUpperCase()),
                        onPressed: () {
                          _trySubmit();
                          // Navigator.of(context)
                          //     .pushNamed(UserProductsScreen.routeName);
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          textColor: Colors.white70,
                          child: Text("Create Account".toUpperCase()),
                          onPressed: () {},
                        ),
                        Container(
                          color: Colors.white54,
                          width: 2.0,
                          height: 20.0,
                        ),
                        FlatButton(
                          textColor: Colors.white70,
                          child: Text("Forgot Password".toUpperCase()),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    //SizedBox(height: 10.0),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
