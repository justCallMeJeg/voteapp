import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/color_theme.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ResultsSection extends StatelessWidget {
  final String position;
  final String candidateOne;
  final String candidateOnePhoto;
  final String candidateTwo;
  final String candidateTwoPhoto;
  final int candidateOneVotes;
  final int candidateTwoVotes;

  const ResultsSection({
    super.key,
    required this.position,
    required this.candidateOne,
    this.candidateOnePhoto = "assets/images/placeholder.jpg",
    required this.candidateTwo,
    this.candidateTwoPhoto = "assets/images/placeholder.jpg",
    required this.candidateOneVotes,
    required this.candidateTwoVotes,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Text(
            "$position Election Results",
            style: GoogleFonts.roboto(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              height: 1.5,
            ),
          ),
          Row(
            spacing: 16.0,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(candidateOnePhoto),
              ),
              Expanded(
                child: Column(
                  spacing: 4.0,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          candidateOne,
                          style: GoogleFonts.roboto(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          candidateTwo,
                          style: GoogleFonts.roboto(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "$candidateOneVotes Votes",
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          "$candidateTwoVotes Votes",
                          style: GoogleFonts.roboto(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(candidateTwoPhoto),
              ),
            ],
          ),
          LinearPercentIndicator(
            lineHeight: 8.0,
            percent:
                (candidateOneVotes / (candidateOneVotes + candidateTwoVotes)),
            backgroundColor: Colors.red[300],
            progressColor: Colors.blue[300],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 4.0,
            children: [
              Text(
                "Show More",
                style: GoogleFonts.roboto(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: Palette.primary,
                ),
              ),
              Icon(Icons.keyboard_arrow_down, color: Palette.primary),
            ],
          ),
        ],
      ),
    );
  }
}
