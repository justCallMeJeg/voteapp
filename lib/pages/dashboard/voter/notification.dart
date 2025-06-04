import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/color_theme.dart';
import 'package:myapp/components/notification_item.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

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
          'Notifications',
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
          NotificationItem(
            sender: "System",
            time: "1:00 PM",
            subject: "Update Available",
            preview:
                "A new update is available for your app. Please update to the latest version for better performance and new features.",
          ),
          NotificationItem(
            sender: "User",
            time: "1:05 PM",
            subject: "Feedback Received",
            preview:
                "Thank you for your feedback! We appreciate your input and will consider it for future updates.",
          ),
          NotificationItem(
            sender: "Admin",
            time: "1:10 PM",
            subject: "Bug Fix",
            preview:
                "We are currently working on a bug fix for the issue you reported. Thank you for your patience.",
          ),
        ],
      ),
    );
  }
}
