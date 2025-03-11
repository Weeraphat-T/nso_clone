import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
        ),
        textAlign: TextAlign.start,
      ),
    );
  }
}

class SettingsItem extends StatelessWidget {
  final String title;
  final Function()? onTap;
  const SettingsItem({super.key, this.onTap,required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 25,
        ),
      ),
      onTap: onTap,
      tileColor: Colors.black26,
    );
  }
}
