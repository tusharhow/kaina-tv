import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParametreScreen extends StatefulWidget {
  ParametreScreen({Key? key}) : super(key: key);

  @override
  State<ParametreScreen> createState() => _ParametreScreenState();
}

class _ParametreScreenState extends State<ParametreScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isClicked1 = false;
  bool isClicked2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        backgroundColor: Colors.pinkAccent,
        child: ListView(
          // Important: Remove any padding from the ListView.

          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/65107679?v=4'),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.edit,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tushar Mahmud',
                      style: GoogleFonts.montserrat(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Image.asset(
                          'images/menu.png',
                          color: Colors.white,
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Image.asset(
                'images/user.png',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
              title: Text('Profile',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ParametreScreen()));
              },
              leading: Image.asset(
                'images/settings.png',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
              title: Text('Settings',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Image.asset(
                'images/camera.png',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
              title: Text('Qui sommes nous ?',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            ListTile(
              leading: Image.asset(
                'images/mark.png',
                color: Colors.white,
                height: 30,
                width: 30,
              ),
              title: Text('Help',
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 50,
          width: 70,
          color: Colors.pinkAccent,
          child: Center(
            child: Text(
              'Logo',
              style: GoogleFonts.montserrat(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'images/menu.png',
              color: Colors.black38,
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 25),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Paramètres',
                style: GoogleFonts.montserrat(
                  fontSize: 21,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    'Mode Nut',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Switch(
                      value: isClicked1,
                      onChanged: (value) {
                        setState(() {
                          isClicked1 = value;
                        });
                      }),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20,
            ),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Row(
                children: [
                  Text(
                    'Notifications',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Switch(
                      value: isClicked2,
                      onChanged: (value) {
                        setState(() {
                          isClicked2 = value;
                        });
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
