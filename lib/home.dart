import 'package:flutter/material.dart';
import 'attendance.dart';
import 'personal.dart';
import 'exam_info.dart';
import 'dummy.dart';
import 'Tester.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key, required this.user, required this.pass})
      : super(key: key);

  final String user, pass;

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Second Page MF"),
      ),
      body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            const Text(
              'Hello There',
              style: TextStyle(
                fontSize: 40,
              ),
            ),
            Text(
              'Person with username "${widget.user}".',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            Text(
              '"${widget.pass}" was your Password.',
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Go back!'),
            ),
          ])),
      drawer: Drawer(
          child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        children: [
           DrawerHeader(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.inversePrimary,),
              child: const Text('Drawer for Stuff')),
          ListTile(
            title: const Text('Personal Info'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PersonalInfo()),
              );
            },
          ),
          ListTile(
            title: const Text('Academic Info'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Attendance()),
              );
            },
          ),
          ListTile(
            title: const Text('Exam Info'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ExamInfo()),
              );
            },
          ),
          ListTile(
            title: const Text('Dummy Page'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Dummy()),

              );
            },
          ),
          ListTile(
            title: const Text('Tester'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Tester()),
                
              );
            },
          ),
        ],
      )),
    );
  }
}
