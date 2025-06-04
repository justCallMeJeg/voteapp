import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElectionCard extends StatelessWidget {
  final String name;
  final String date;
  const ElectionCard({super.key, required this.name, required this.date});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.0,
      children: [
        Expanded(
          child: AspectRatio(
            aspectRatio: 1.0,
            child: Image(
              image: Image.asset('assets/images/placeholder.jpg').image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: GoogleFonts.roboto(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              date,
              style: GoogleFonts.roboto(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
