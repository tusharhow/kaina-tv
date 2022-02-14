import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailsPage extends StatefulWidget {
  DetailsPage({Key? key}) : super(key: key);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

String videoID = 'Z_KfwAIVglY';
YoutubePlayerController _controller = YoutubePlayerController(
  initialVideoId: videoID,
  flags: YoutubePlayerFlags(
    autoPlay: false,
    mute: false,
    controlsVisibleAtStart: true,
  ),
);

class _DetailsPageState extends State<DetailsPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 580,
                width: MediaQuery.of(context).size.width / 1.10,
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
                          'La Pailade: Un Fablab pour\nles habitants do quarter',
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            color: Colors.black54,
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
                      height: 25,
                    ),
                    // ClipRRect(
                    //   borderRadius: BorderRadius.circular(25),
                    //   child: Stack(
                    //     children: [
                    //       Image.asset(
                    //         'images/wom.jpg',
                    // width: 300,
                    //       ),
                    //       Positioned(
                    //           left: 120,
                    //           top: 70,
                    //           child: Icon(
                    //             Icons.play_arrow,
                    //             color: Colors.pink,
                    //             size: 50,
                    //           ))
                    //     ],
                    //   ),
                    // ),
                    Container(
                      width: 300,
                      height: 200,
                      child: YoutubePlayer(
                        controller: _controller,
                        liveUIColor: Colors.amber,
                        showVideoProgressIndicator: true,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 20, right: 20),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'
                          's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum',
                          style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
