import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataIconProfile extends StatelessWidget {
  const DataIconProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IconProfile(
          title: "MT",
          color: Colors.white,
          image: 'assets/MyProfile.jpg',
        ),
        SizedBox(
          width: 30,
        ),
        IconProfile(
          title: "River",
          color: Colors.white,
          image: 'assets/MyProfile.jpg',
        ),
        SizedBox(
          width: 30,
        ),
        IconProfile(
          title: "Lava",
          color: Colors.white,
          image: 'assets/MyProfile.jpg',
        ),
        SizedBox(
          width: 30,
        ),
        IconProfile(
          title: "Beach",
          color: Colors.white,
          image: 'assets/MyProfile.jpg',
        ),
        SizedBox(
          width: 30,
        ),
        IconProfile(
          title: "Sunset",
          color: Colors.white,
          image: 'assets/MyProfile.jpg',
        ),
      ],
    );
  }
}

class IconProfile extends StatelessWidget {
  const IconProfile({
    super.key,
    required this.title,
    required this.color,
    required this.image,
  });

  final String title;
  final Color color;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage(image),
            radius: 15,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ],
    );
  }
}
