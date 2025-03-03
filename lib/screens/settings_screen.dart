import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/home_screen.dart';

class Settings_Screen extends StatelessWidget {
  const Settings_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(13, 13, 13, 1),
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Home_Screen(),
              ),
            );
          },
          child: Icon(
            Icons.arrow_back,
            size: 40.0,
            color: Colors.white,
          ),
        ),
        title: Column(
          children: [
            const SizedBox(
              height: 1.5,
            ),
            Text(
              "Settings",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(41, 41, 41, 1),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: SizedBox(
                    width: 700,
                    height: 300,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                shape: BoxShape.circle,
                              ),
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage:
                                    AssetImage("assets/MyProfile.jpg"),
                              ),
                            ),
                            Text(
                              'Weeraphat_T',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Text(
                              'Friend Code',
                              style: GoogleFonts.roboto(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              'SW - 5555 - 5555 - 5555',
                              style: GoogleFonts.roboto(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.start,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(88, 88, 88, 1),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Icon(
                                  Icons.copy,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 70,
                                height: 60,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(88, 88, 88, 1),
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
