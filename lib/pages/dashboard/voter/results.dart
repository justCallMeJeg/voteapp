import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/color_theme.dart';
import 'package:myapp/components/position_results.dart';

class ElectionResultsPage extends StatelessWidget {
  const ElectionResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'CASSC 2025 Election Results',
          style: GoogleFonts.inter(
            fontSize: 22.0,
            fontWeight: FontWeight.w600,
            color: Palette.black,
          ),
        ),
        elevation: 2.0,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        children: [
          ResultsSection(
            position: "President",
            candidateOne: "Gabayeron",
            candidateOnePhoto: "assets/images/GABAYERON.jpg",
            candidateTwo: "Rondael",
            candidateTwoPhoto: "assets/images/RONDAEL.jpg",
            candidateOneVotes: 35,
            candidateTwoVotes: 15,
          ),
          ResultsSection(
            position: "Vice President",
            candidateOne: "Abad",
            candidateTwo: "Simoy",
            candidateOneVotes: 10,
            candidateTwoVotes: 40,
          ),
        ],
      ),
    );
  }
}
