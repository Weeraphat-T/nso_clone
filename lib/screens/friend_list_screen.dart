import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nso_clone/screens/home_screen.dart';
import 'package:nso_clone/widgets/icon_profile.dart';

class Friend_List_Screen extends StatelessWidget {
  const Friend_List_Screen({super.key});

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
              "Friend Online",
              style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(17.0),
              child: Icon(Icons.info_outline,color: Colors.white,size: 40.0,)
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
          child: SizedBox(
            width: 1000,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Online',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'None of your friend are online.',
                      style: GoogleFonts.roboto(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Offline',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "Alpha123",
                      image: 'assets/F_Profile1.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "Beta456",
                      image: 'assets/F_Profile2.png',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "C-Camp",
                      image: 'assets/F_Profile3.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "DJAI",
                      image: 'assets/F_Profile4.png',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "Economy56",
                      image: 'assets/F_Profile5.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "Fun2Rhyme",
                      image: 'assets/F_Profile6.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "GG_WP",
                      image: 'assets/F_Profile7.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "Harry-P",
                      image: 'assets/F_Profile8.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "Iapple",
                      image: 'assets/F_Profile9.jpg',
                    ),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    IconProfile_II(
                      title: "Jojan",
                      image: 'assets/F_Profile10.png',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
