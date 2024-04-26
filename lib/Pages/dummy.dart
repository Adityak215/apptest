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
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Dummy app bar'),
        
      ),

      body: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:<Widget>[
          Column(
            children:<Widget>[
              Icon(Icons.alarm,),
              Text('Alarm'),
            ],
          ),
          Column(
            children:<Widget>[
              Icon(Icons.android,),
              Text('Android'),
            ],
          ),
          Column(
            children:<Widget>[
              Icon(Icons.backpack,),
              Text('Backpack'),
            ],
          ),
      ],)
    );
  }
}