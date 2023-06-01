import 'package:flutter/material.dart';

class Tester extends StatefulWidget {
  const Tester({super.key});

  @override
  State<Tester> createState() => _TesterState();
}

class _TesterState extends State<Tester> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title:  const Row(
          children: <Widget>[
            Text('Pussy'),
            Spacer(),
            Text('data'),
            Spacer(),
            Text('wtf'),
            ],)

      ),
    );
  }
}