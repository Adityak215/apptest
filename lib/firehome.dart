import 'package:firebase_auth/firebase_auth.dart';
import 'package:apptest/auth.dart';
import 'package:flutter/material.dart';


class Firehomie extends StatefulWidget {
  const Firehomie({super.key});

  @override
  State<Firehomie> createState() => _FirehomieState();
}

class _FirehomieState extends State<Firehomie> {

  final User? user = Auth().currentUser;

  Future<void> signoutttt() async{
    await Auth().signTFOut();
  }

  Widget _title(){
    return const Text('Firebase authentication bitch');
  }

  Widget _userUIDig(){
    return Text(user?.email?? 'User email');
  }

  Widget _signoutButt(){
    return ElevatedButton(
      onPressed: signoutttt,
      child: const Text('Sign out and away niga'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _userUIDig(),
            _signoutButt(),
          ],
        ),
      ),
    );
  }
}