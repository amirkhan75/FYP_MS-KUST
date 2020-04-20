import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'All_Dashboard/all_dashboard.dart';


class SingIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SignIn Details',
      home: SingInDetails(),
    );
  }
}

class SingInDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            child: Stack(
              children: <Widget>[
                Container(
                  height: 280,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF11FBD),
                  ),
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        'assets/images/logo.gif',
                        height: 200.0,
                      ),
                    
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 250.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFFFFF),
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  padding: const EdgeInsets.only(
                      top: 10.0, left: 16.0, right: 16.0, bottom: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text('Sign In',
                            style: TextStyle(
                                color: Color(0xFF21BFBD),
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 30.0)),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      kReusableName(
                        icon: Icons.person,
                        nameField: 'Email',
                      ),
                      kreusabletextfield(
                        hintText: 'Enter Email',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Password:',
                        icon: Icons.lock,
                      ),
                      kreusabletextfield(
                        hintText: 'Enter Your Password',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(26.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => all_dashboard()),
                            );
                          },
                          child: Center(
                            child: Text('Sign In',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 25.0)),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          color: Color(0xFF21BFBD),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class kreusabletextfield extends StatelessWidget {
  kreusabletextfield({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.black26,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal,
            fontSize: 20.0),
        filled: true,
        fillColor: Colors.white38,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
      ),
    );
  }
}

class kReusableName extends StatelessWidget {
  kReusableName({this.nameField, this.icon});

  final String nameField;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          icon,
          color: Color(0xFF21BFBD),
        ),
        Text(nameField,
            style: TextStyle(
                color: Color(0xFF21BFBD),
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
                fontSize: 20.0)),
      ],
    );
  }
}
