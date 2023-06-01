import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  const Attendance({super.key});
  
  @override
  State<Attendance> createState() => _AttendanceState();
  

}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Attendance Page ig"),
      ),

      body: const Text('I donno man 69%'),
    );
  }
}
