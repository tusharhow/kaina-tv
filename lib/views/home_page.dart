import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Container(
          height: 50,
          width: 70,
          color: Colors.green,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width / 1.25,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: '   Culture, arts, social..',
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 20,
                    ),
                    contentPadding: EdgeInsets.only(
                      left: 20,
                    ),
                    prefixIcon: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset(
                        'images/search.png',
                        color: Colors.black38,
                        height: 30,
                        width: 30,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width / 1.25,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(35),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ]),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Today',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'La Pailade: Un Fablab pour\nles habitants do quarter',
                        style: GoogleFonts.montserrat(
                          fontSize: 20,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 15),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        '1 February 2022 a,11:00 Montpellier',
                        style: GoogleFonts.montserrat(
                          fontSize: 13,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'images/wom.jpg',
                      width: 270,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 30),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Media citoyen',
                  style: GoogleFonts.montserrat(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/wom2.jpg',
                          // width: 100,
                          // height: 150,
                          height: 90,
                          width: 80,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 20,
                        child: Image.asset(
                          'images/heart.png',
                          width: 20,
                          height: 20,
                          color: Colors.pink,
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 20,
                          child: Container(
                            height: 15,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                            ),
                            child: Center(
                              child: Text(
                                'Kaina Tv',
                                style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'La Pailade: Un Fablab pourles\nhabitants do quarter',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Reportage',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'images/clock.png',
                              width: 20,
                              height: 20,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '1 February 2022 a,11:00 Montpellier',
                              style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.share, color: Colors.pink, size: 20),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/wom3.jpg',
                          // width: 100,
                          // height: 150,
                          height: 90,
                          width: 80,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 20,
                        child: Image.asset(
                          'images/heart.png',
                          width: 20,
                          height: 20,
                          color: Colors.pink,
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 20,
                          child: Container(
                            height: 15,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                            ),
                            child: Center(
                              child: Text(
                                'Kaina Tv',
                                style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'La Pailade: Un Fablab pourles\nhabitants do quarter',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Reportage',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'images/clock.png',
                              width: 20,
                              height: 20,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '5 February 2022 a,11:00 Montpellier',
                              style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.share, color: Colors.pink, size: 20),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: Image.asset(
                          'images/wom4.jpg',
                          // width: 100,
                          // height: 150,
                          height: 90,
                          width: 80,
                        ),
                      ),
                      Positioned(
                        top: 10,
                        right: 20,
                        child: Image.asset(
                          'images/heart.png',
                          width: 20,
                          height: 20,
                          color: Colors.pink,
                        ),
                      ),
                      Positioned(
                          bottom: 10,
                          right: 20,
                          child: Container(
                            height: 15,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                            ),
                            child: Center(
                              child: Text(
                                'Kaina Tv',
                                style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ))
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'La Pailade: Un Fablab pourles\nhabitants do quarter',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.black54,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Reportage',
                          style: GoogleFonts.montserrat(
                            fontSize: 13,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'images/clock.png',
                              width: 20,
                              height: 20,
                              color: Colors.pink,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '5 February 2022 a,11:00 Montpellier',
                              style: GoogleFonts.montserrat(
                                fontSize: 11,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Icon(Icons.share, color: Colors.pink, size: 20),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
