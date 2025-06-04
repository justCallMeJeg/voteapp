import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/color_theme.dart';
import 'package:myapp/components/election_card.dart';
import 'package:myapp/pages/dashboard/voter/notification.dart';

class AdminDashboardPage extends StatefulWidget {
  const AdminDashboardPage({super.key});

  @override
  State<AdminDashboardPage> createState() => _AdminDashboardPageState();
}

class _AdminDashboardPageState extends State<AdminDashboardPage> {
  int currentPageIndex = 0;
  Text appbarText = Text("Dashboard");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appbarText,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const NotificationPage(),
                ),
              );
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
        ],
        elevation: 2.0,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 8.0,
              children: [
                Text(
                  "Welcome, Juan de la Cruz!",
                  style: GoogleFonts.roboto(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    color: Palette.black,
                  ),
                ),
                ElectionsSection(),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Add Elections',
        child: Icon(Icons.add),
      ),
    );
  }
}

class ElectionsSection extends StatelessWidget {
  const ElectionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.0,
      children: [
        Text(
          "Your Elections",
          style: GoogleFonts.roboto(
            fontSize: 16.0,
            fontWeight: FontWeight.w500,
            color: Palette.black,
          ),
        ),
        GridView.count(
          shrinkWrap: true,
          mainAxisSpacing: 16.0,
          crossAxisSpacing: 16.0,
          crossAxisCount: 2,
          children: [
            ElectionCard(name: "CASSC Elections", date: "June 5, 2025"),
            ElectionCard(name: "CEASC Elections", date: "June 5, 2025"),
            ElectionCard(name: "CITSC Elections", date: "June 5, 2025"),
            ElectionCard(name: "COESC Elections", date: "June 5, 2025"),
          ],
        ),
      ],
    );
  }
}
