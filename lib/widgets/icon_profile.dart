import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataIconProfile extends StatelessWidget {
  const DataIconProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: const Row(
        children: [
          IconProfile(
            title: "MT",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "River",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "Lava",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "Beach",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "Sunset",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "MT",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "River",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "Lava",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "Beach",
            image: 'assets/MyProfile.jpg',
          ),
          SizedBox(
            width: 30,
          ),
          IconProfile(
            title: "Sunset",
            image: 'assets/MyProfile.jpg',
          ),
        ],
      ),
    );
  }
}

class IconProfile extends StatelessWidget {
  const IconProfile({
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
