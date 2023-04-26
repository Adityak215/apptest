import 'package:flutter/material.dart';

class ExamInfo extends StatefulWidget {
  const ExamInfo({super.key});

  @override
  State<ExamInfo> createState() => _ExamInfoState();
}

class _ExamInfoState extends State<ExamInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Information'),
      ),

      body: const Text('Exams may be ASS, BUT Maintain that CGPA'),
    );
  }
}
