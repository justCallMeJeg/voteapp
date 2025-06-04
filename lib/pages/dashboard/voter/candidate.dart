import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/color_theme.dart';

class CandidateDetailPage extends StatelessWidget {
  const CandidateDetailPage({super.key});

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
          'Candidate Profile',
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
        children: [ProfileSection(), BiographySection()],
      ),
    );
  }
}

class ProfileSection extends StatelessWidget {
  const ProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        spacing: 16.0,
        children: [
          const SizedBox(
            height: 120.0,
            width: 120.0,
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/JALANDONI.jpg'),
            ),
          ),
          ProfileInfo(),
        ],
      ),
    );
  }
}

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 4.0,
      children: [
        Text(
          "Joseph Mikhaeli Jalandoni",
          style: GoogleFonts.roboto(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            height: 1.25,
          ),
        ),
        Text(
          "Bachelor of Science in Computer Science",
          style: GoogleFonts.roboto(
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          "BSCS 2A Secretary - Independent",
          style: GoogleFonts.roboto(
            fontSize: 16.0,
            fontWeight: FontWeight.w400,
            color: Palette.grayDark,
          ),
        ),
      ],
    );
  }
}

class BiographySection extends StatelessWidget {
  const BiographySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Text(
            "Biography",
            style: GoogleFonts.roboto(
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
              color: Palette.black,
            ),
          ),
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Image.asset(
              'assets/images/placeholder.jpg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
          ),
          Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et massa mi. Aliquam in hendrerit urna. Pellentesque sit amet sapien fringilla, mattis ligula consectetur, ultrices mauris. Maecenas vitae mattis tellus. Nullam quis imperdiet augue. Vestibulum auctor ornare leo, non suscipit magna interdum eu. Curabitur pellentesque nibh nibh, at maximus ante fermentum sit amet. Pellentesque commodo lacus at sodales sodales. Quisque sagittis orci ut diam condimentum, vel euismod erat placerat. In iaculis arcu eros, eget tempus orci facilisis id.",
            style: GoogleFonts.roboto(
              fontSize: 16.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
