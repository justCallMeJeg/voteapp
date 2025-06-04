import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/color_theme.dart';
import 'package:myapp/components/settings_item.dart';
import 'package:myapp/pages/dashboard/voter/notification.dart';

/// Flutter code sample for [NavigationBar].

class VoterDashboardPage extends StatefulWidget {
  const VoterDashboardPage({super.key});

  @override
  State<VoterDashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<VoterDashboardPage> {
  int currentPageIndex = 0;
  Text appbarText = const Text("Dashboard");

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
            icon: const Icon(Icons.notifications),
          ),
        ],
        elevation: 2.0,
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;

            if (index == 0) {
              appbarText = const Text("Dashboard");
            } else if (index == 1) {
              appbarText = const Text("History");
            } else if (index == 2) {
              appbarText = const Text("Profile");
            }
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.history)),
            label: 'History',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.account_circle),
            icon: Icon(Icons.account_circle_outlined),
            label: 'Profile',
          ),
        ],
      ),
      body:
          <Widget>[
            /// Home page
            Column(children: [const Text("Home Page")]),

            /// Notifications page
            Column(children: [const Text("History Page")]),

            /// Messages page
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              children: [
                ProfileSection(),
                EditProfileButton(),
                AccountSettingsSection(),
              ],
            ),
          ][currentPageIndex],
    );
  }
}

// MIKO's PROFILE TAB CODE
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
              backgroundImage: AssetImage('assets/images/GABAYERON.jpg'),
            ),
          ),
          Text(
            "Geger John Paul H. Gabayeron",
            style: GoogleFonts.roboto(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
              height: 1.25,
            ),
          ),
        ],
      ),
    );
  }
}

class EditProfileButton extends StatelessWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Palette.primary,
          padding: const EdgeInsets.symmetric(vertical: 16.0),
        ),
        child: Text(
          "Edit Profile",
          style: GoogleFonts.roboto(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
            height: 1.5,
            letterSpacing: 0.1,
          ),
        ),
      ),
    );
  }
}

class AccountSettingsSection extends StatelessWidget {
  const AccountSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 8.0,
        children: [
          Text(
            "Account Settings",
            style: GoogleFonts.roboto(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
              color: Palette.grayDark,
            ),
          ),
          AccountSettingsList(),
        ],
      ),
    );
  }
}

class AccountSettingsList extends StatelessWidget {
  const AccountSettingsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 8.0,
      children: [
        SettingsListItem(
          icon: Icon(Icons.person_outline),
          title: "Personal Information",
        ),
        SettingsListItem(
          icon: Icon(Icons.notifications_outlined),
          title: "Notification Preferences",
        ),
        SettingsListItem(icon: Icon(Icons.email_outlined), title: "Email"),
        SettingsListItem(
          icon: Icon(Icons.lock_outline),
          title: "Change Password",
        ),
        SettingsListItem(
          icon: Icon(Icons.settings_outlined),
          title: "Privacy Settings",
        ),
      ],
    );
  }
}
