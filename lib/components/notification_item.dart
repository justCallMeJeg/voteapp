import 'package:flutter/material.dart';
import 'package:myapp/color_theme.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationItem extends StatelessWidget {
  final String sender;
  final String time;
  final String subject;
  final String preview;

  const NotificationItem({
    super.key,
    required this.sender,
    required this.time,
    required this.subject,
    required this.preview,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Row(
            children: [
              Expanded(
                child: Labels(
                  sender: sender,
                  time: time,
                  subject: subject,
                  preview: preview,
                ),
              ),
              Icon(Icons.chevron_right),
            ],
          ),
        ),
        Divider(height: 1.0, color: Colors.grey),
      ],
    );
  }
}

class Labels extends StatelessWidget {
  final String sender;
  final String time;
  final String subject;
  final String preview;

  const Labels({
    super.key,
    required this.sender,
    required this.time,
    required this.subject,
    required this.preview,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 4.0,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              sender,
              style: GoogleFonts.inter(
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: Palette.black,
              ),
            ),
            Text(
              time,
              style: GoogleFonts.inter(
                fontSize: 15.0,
                fontWeight: FontWeight.w400,
                color: Palette.gray,
              ),
            ),
          ],
        ),
        Text(
          subject,
          style: GoogleFonts.inter(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Palette.black,
          ),
        ),
        Text(
          preview,
          style: GoogleFonts.inter(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
            color: Palette.gray,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}
