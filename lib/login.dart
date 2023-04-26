import 'package:flutter/material.dart';

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
            ])));
  }
}
