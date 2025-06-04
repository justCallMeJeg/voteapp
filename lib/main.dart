import 'package:flutter/material.dart';
import 'package:myapp/pages/dashboard/voter/candidate.dart';
import 'package:myapp/pages/dashboard/voter/dashboard.dart';
import 'package:myapp/pages/dashboard/voter/notification.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ICT 110 Voting App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.색상 구성표: ColorScheme.fromSeed(seedColor: 색상.deepPurple),
      ),
      home: TemporaryPageList(),
    );
  }
}

class TemporaryPageList extends StatefulWidget {
  const TemporaryPageList({super.key});

  @override
  State<TemporaryPageList> createState() => _TemporaryPageListState();
}

class _TemporaryPageListState extends State<TemporaryPageList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Page List')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 8,
          children: <Widget>[
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => const LoginPage()),
            //     );
            //   },
            //   child: const Text('Login Page'),
            // ),
            // const Gap(16),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => const RecoveryPage()),
            //     );
            //   },
            //   child: const Text('Recovery Page'),
            // ),
            // const Gap(16),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => const SignupPage()),
            //     );
            //   },
            //   child: const Text('Signup Page'),
            // ),
            // const Gap(16),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => const AdminDashboard()),
            //     );
            //   },
            //   child: const Text('Admin Dashboard'),
            // ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const CandidateDetailPage(),
                  ),
                );
              },
              child: const Text('Candidate Detail Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const VoterDashboardPage()),
                );
              },
              child: const Text('Voter Dashboard'),
            ),
            // const Gap(16),
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.of(context).push(
            //       MaterialPageRoute(builder: (context) => const BallotPage()),
            //     );
            //     },
            //   child: const Text('Ballot Page'),
            // ),
            // const Gap(16),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const NotificationPage(),
                  ),
                );
              },
              child: const Text('Notification Page'),
            ),
          ], // ElevatedButton(// onPressed: () {// Navigator.of(context).push(// MaterialPageRoute(builder: (context) => const ResultsPage()),// );// },// child: const Text('Results Page'),// ),],
        ),
      ),
    );
  }
}
