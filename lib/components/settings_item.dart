import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/color_theme.dart';

class SettingsListItem extends StatelessWidget {
  final Icon icon;
  final String title;

  const SettingsListItem({super.key, required this.icon, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        spacing: 8.0,
        children: [
          icon,
          Expanded(
            child: Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Palette.black,
              ),
            ),
          ),
          Icon(Icons.arrow_right, color: Palette.black),
        ],
      ),
    );
  }
}
