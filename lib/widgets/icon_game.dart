import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataIconGame extends StatelessWidget {
  const DataIconGame({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        IconGame(
          title: "Splatoon 3",
          image: 'assets/SP3-pic.png',
        ),
        SizedBox(
          width: 30,
        ),
        IconGame(
          title: "Splatoon 2",
          image: 'assets/SP2-pic.png',
        ),
        SizedBox(
          width: 30,
        ),
        IconGame(
          title: "Animal Crossing: New Horizon",
          image: 'assets/ACNH-pic.png',
        ),
        SizedBox(
          width: 30,
        ),
        IconGame(
          title: "Super Smash Bros. Ultimate",
          image: 'assets/SSBU-pic.png',
        ),
      ],
    );
  }
}

class IconGame extends StatelessWidget {
  const IconGame({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(8.0),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(25)),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          title,
          style: GoogleFonts.roboto(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
