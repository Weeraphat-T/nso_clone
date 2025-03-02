import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataIconGame extends StatelessWidget {
  const DataIconGame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      
      child: Row(
        children: [
          IconGame(
            title: "Splatoon 3",
            image: 'assets/SP3-pic.png',
            onTap: () {
              //Navigator.push(
                //context,
                //MaterialPageRoute(
                  // builder: (context) => HomeScreen(),
                //),
              //);
            },
          ),
          SizedBox(
            width: 0.5,
          ),
          IconGame(
            title: "Splatoon 2",
            image: 'assets/SP2-pic.png',
            onTap: () {
              //Navigator.push(
                //context,
                //MaterialPageRoute(
                  // builder: (context) => HomeScreen(),
                //),
              //);
            },
          ),
          SizedBox(
            width: 0.5,
          ),
          IconGame(
            title: "Animal Crossing: New Horizons",
            image: 'assets/ACNH-pic.png',
            onTap: () {
              //Navigator.push(
                //context,
                //MaterialPageRoute(
                  // builder: (context) => HomeScreen(),
                //),
              //);
            },
          ),
          SizedBox(
            width: 0.5,
          ),
          IconGame(
            title: "Super Smash Bros. Ultimate",
            image: 'assets/SSBU-pic.png',
            onTap: () {
              //Navigator.push(
                //context,
                //MaterialPageRoute(
                  // builder: (context) => HomeScreen(),
                //),
              //);
            },
          ),
        ],
      ),
    );
  }
}

class IconGame extends StatelessWidget {
  const IconGame({
    super.key,
    required this.title,
    required this.image,
    this.onTap,
  });

  final String title;
  final String image;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 320,
            width: 320,
            padding: const EdgeInsets.all(8.0),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 3,
          ),
          Text(
            title,
            style: GoogleFonts.roboto(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.grey,
            ),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
