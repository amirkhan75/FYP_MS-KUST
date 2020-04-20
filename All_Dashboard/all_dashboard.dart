import 'package:flutter/material.dart';
import 'package:flutter_bloc_authentication/Coordinator_UI/dashboard.dart';
import 'package:flutter_bloc_authentication/Student_UI/dashboard.dart';
import 'package:flutter_bloc_authentication/Supervisor_UI/dashboard.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: all_dashboard(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class all_dashboard extends StatelessWidget {
  static final String path = "lib/src/pages/navigation/drawer2.dart";
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();
  final Color primary = Colors.white;
  final Color active = Colors.red.shade800;
  final Color divider = Colors.grey.shade600;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        
        backgroundColor: Color(0xFF21BFBD),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            _key.currentState.openDrawer();
          },
        ),
      ),
      drawer: _buildDrawer(),
      backgroundColor: Color(0xFF21BFBD),
      body: ListView(children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 15.0, right: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: 150.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 25.0),
        Padding(
          padding: EdgeInsets.only(left: 40.0),
          child: Row(
            children: <Widget>[
              Text('All  Dashboard',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0)),
              SizedBox(width: 10.0),
            ],
          ),
        ),
        SizedBox(height: 40.0),
        Container(
          padding: EdgeInsets.all(30.0),
          child: GridView.count(crossAxisCount: 2, children: <Widget>[
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => coordintor()),
                  );
                },
                splashColor: Color(0xFF21BFBD),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.dashboard,
                          size: 70.0, color: Color((0xFF21BFBD))),
                      Text("Coordinator ", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => supervisor()),
                  );
                },
                splashColor: Color(0xFF21BFBD),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.dashboard,
                          size: 70.0, color: Color((0xFF21BFBD))),
                      Text("Panel", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => supervisor()),
                  );
                },
                splashColor: Color(0xFF21BFBD),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.dashboard, size: 70.0, color: Color((0xFF21BFBD))),
                      Text("Supervisor", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
            Card(
              margin: EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => studentdashboard()),
                  );
                },
                splashColor: Color(0xFF21BFBD),
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Icon(Icons.dashboard,
                          size: 70.0, color: Color((0xFF21BFBD))),
                      Text("Student ", style: new TextStyle(fontSize: 17.0))
                    ],
                  ),
                ),
              ),
            ),
          ]),
          height: MediaQuery.of(context).size.height - 185.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
          ),
        )
      ]),
    );
  }
}

_buildDrawer() {
  //final String image = images[0];
  return ClipPath(
    // clipper: OvalRightBorderClipper(),
    child: Drawer(
      child: Container(
        padding: const EdgeInsets.only(left: 16.0, right: 40),
        decoration: BoxDecoration(
            color: Colors.teal, boxShadow: [BoxShadow(color: Colors.black45)]),
        width: 300,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    icon: Icon(
                      Icons.power_settings_new,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      
                    },
                  ),
                ),
                Container(
                  height: 130,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      gradient:
                          LinearGradient(colors: [Colors.white, Colors.white])),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage("assets/images/amir.jpg"),
                    
                  ),
                ),
                SizedBox(height: 5.0),
                Text(
                  "Amir Khan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  "CS057@Kust.edu.pk",
                  style: TextStyle(color: Colors.white, fontSize: 16.0),
                ),
                _buildDivider(),
                SizedBox(height: 30.0),
                _buildRow(Icons.home, "Home"),

                _buildDivider(),
                _buildRow(Icons.person_pin, "My profile"),
                _buildDivider(),
                _buildRow(Icons.notifications, "Notifications",
                    showBadge: true),
                _buildDivider(),
                _buildRow(Icons.note, "Messages"),
                _buildDivider(),

                _buildRow(Icons.settings, "Settings"),
                _buildDivider(),
                // _buildRow(Icons.email, "Contact us"),
                // _buildDivider(),
                // _buildRow(Icons.info_outline, "Help"),
                // _buildDivider(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

Divider _buildDivider() {
  return Divider(
    color: Colors.white,
  );
}

Widget _buildRow(IconData icon, String title, {bool showBadge = false}) {
  final TextStyle tStyle = TextStyle(color: Colors.white, fontSize: 16.0);
  return Container(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(children: [
        Icon(
          icon,
          color: Colors.white,
        ),
        SizedBox(width: 10.0),
        Text(
          title,
          style: tStyle,
        )
      ]));
}
