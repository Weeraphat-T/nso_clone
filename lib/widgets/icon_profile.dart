import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataIconProfile_I extends StatelessWidget {
  const DataIconProfile_I({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: const Row(
        children: [
          IconProfile_I(
            title: "Alpha123",
            image: 'assets/F_Profile1.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "Beta456",
            image: 'assets/F_Profile2.png',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "C-Camp",
            image: 'assets/F_Profile3.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "DJAI",
            image: 'assets/F_Profile4.png',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "Economy56",
            image: 'assets/F_Profile5.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "Fun2Rhyme",
            image: 'assets/F_Profile6.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "GG_WP",
            image: 'assets/F_Profile7.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "Harry-P",
            image: 'assets/F_Profile8.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "Iapple",
            image: 'assets/F_Profile9.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile_I(
            title: "Jojan",
            image: 'assets/F_Profile10.png',
          ),
        ],
      ),
    );
  }
}

class IconProfile_I extends StatelessWidget {
  const IconProfile_I({
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
            height: 120,
            width: 120,
            decoration: BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage(image),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          SizedBox(
            child: Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    );
  }
}

class IconProfile_II extends StatelessWidget {
  const IconProfile_II({
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
      child: Row(
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
              backgroundImage: AssetImage(image),
            ),
          ),
          const SizedBox(
            height: 1,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'offline',
                style: GoogleFonts.roboto(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
