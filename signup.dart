import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Account Details',
      home: AccountRegistrationForm(),
     
    );
  }
}

class AccountRegistrationForm extends StatefulWidget {
  @override
  _AccountRegistrationFormState createState() =>
      _AccountRegistrationFormState();
}

class _AccountRegistrationFormState extends State<AccountRegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            // kBackground(
            //   assetImage: 'assets/images/background.jpg',
            // ),
            RegistraionForm(),
          ],
        ),
      ),
    );
  }
}

class RegistraionForm extends StatelessWidget {
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
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFF21BFBD),
                  ),
                  child: Column(
                    children: <Widget>[
                      
                      Image.asset(
                        'assets/images/logo.gif',
                        height: 180.0,
                       // color: Colors.white,
                      ),
                      Text(
                        'Registraion',
                        style:  TextStyle(
                          color: Colors.white,
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25.0, 250.0, 25.0, 16.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  padding: const EdgeInsets.only(
                      top: 30.0, left: 16.0, right: 16.0, bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                          color: Color(0xFF21BFBD),
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0
                        )
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      kReusableName(
                        nameField: 'Name:',
                        icon: Icons.person,
                      ),
                      kReusableTextField(
                        hintText: 'Enter Your Name',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Email:',
                        icon: Icons.mail,
                      ),
                      kReusableTextField(
                        hintText: 'Enter Your Email',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        icon: Icons.person,
                        nameField: 'Username:',
                      ),
                      kReusableTextField(
                        hintText: 'Enter Username',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Department:',
                        icon: Icons.home,
                      ),
                      kReusableTextField(
                        hintText: 'Enter Your Department',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Password:',
                        icon: Icons.lock,
                      ),
                      kReusableTextField(
                        hintText: 'Enter Your Password',
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      kReusableName(
                        nameField: 'Confirm Password:',
                        icon: Icons.lock,
                      ),
                      kReusableTextField(
                        hintText: 'Confirm Your Password',
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: RaisedButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return MyDialogBox();
                                });
                          },
                          child: Center(
                            child: Text(
                              'Register',
                              style:  TextStyle(
                          color: Colors.white,
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        )
                            ),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
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

class MyDialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Container(
        height: 200,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Your Account has been Register Thank You..!',
                textAlign: TextAlign.center,
                style: TextStyle(
                          color: Color(0xFF21BFBD),
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        )
              ),
              SizedBox(
                width: 320.0,
                child: Padding(
                  padding:
                      const EdgeInsets.only(top: 10.0, left: 50.0, right: 50.0),
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0)),
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => HomePage(),
                      //   ),
                      // );
                    },
                    child: Text(
                      "OK",
                      
                      style: TextStyle(
                          color: Color(0xFF21BFBD),
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        )
                    ),
                    color: Colors.white60,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class kReusableTextField extends StatelessWidget {
  kReusableTextField({this.hintText});

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.black,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
                          color: Colors.black38,
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.normal,
                          fontSize: 20.0
                        ),
        filled: true,
        fillColor: Colors.white60,
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
        Text(
          nameField,
          style: TextStyle(
                          color: Color(0xFF21BFBD),
                           fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0
                        )
        ),
      ],
    );
  }
}