import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'parametre.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
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
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePage()));
              },
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
              onTap: () {
                Navigator.pop(context);
              },
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
        title: Image.asset('images/logo.png', height: 50),
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            _scaffoldKey.currentState!.openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset(
              'images/menu2.png',
              color: Colors.black38,
              height: 50,
              width: 50,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 25),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Profile',
                  style: GoogleFonts.montserrat(
                    fontSize: 21,
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Utilisateur',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 25, right: 40),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/65107679?v=4'),
                    ),
                    Spacer(),
                    Icon(Icons.add, color: Colors.black, size: 40),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 15),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Tushar Mahmud',
                  style: GoogleFonts.montserrat(
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 35),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Address Mail',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'Tushar Mahmud',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 35),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Number',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  '01868985485',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 35),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Mot de passe',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  '***********',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 35),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Change mot de passe',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'TusharBandi',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 15),
                child: Text(
                  'TusharBandi',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
