import 'package:flutter/material.dart';

class Dummy extends StatefulWidget {
  const Dummy({super.key});

  @override
  State<Dummy> createState() => _DummyState();
}

class _DummyState extends State<Dummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dummy app bar'),
      ),

      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget>[
          Column(
            children:const <Widget>[
              Icon(Icons.alarm,),
              Text('Alarm'),
            ],
          ),
          Column(
            children:const <Widget>[
              Icon(Icons.android,),
              Text('Android'),
            ],
          ),
          Column(
            children:const <Widget>[
              Icon(Icons.backpack,),
              Text('Backpack'),
            ],
          ),
      ],)
    );
  }
}