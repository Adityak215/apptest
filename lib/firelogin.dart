import 'package:firebase_auth/firebase_auth.dart';
import 'package:apptest/auth.dart';
import 'package:flutter/material.dart';


class FireloginIG extends StatefulWidget {
  const FireloginIG({super.key});

  @override
  State<FireloginIG> createState() => _FireloginIGState();
}

class _FireloginIGState extends State<FireloginIG> {

  String? errortextapparently = '';
  bool isLoginfr = true;

  final TextEditingController _emailshi = TextEditingController();
  final TextEditingController _passshi = TextEditingController();

  Future<void> signwitemailpassWTVR() async{
    try{
      await Auth().signInWEmailPass(
        email: _emailshi.text,
        pass: _passshi.text,);
    } on FirebaseAuthException catch (e){
      setState(() {
        errortextapparently = e.message;
      });
    }
  }

  Future<void> createFireUserWitEmailPass() async {
    try{
      await Auth().createUserWEmailPass(
        email: _emailshi.text, 
        pass: _passshi.text);
    } on FirebaseAuthException catch (e){
      setState(() {
        errortextapparently = e.message;
      });
    }
  }

  Widget _tittle(){
    return const Text('Firebasse tryouts');
  }

  Widget _entryareaaaa(String title, TextEditingController cuntroller){
    return TextField(
      controller: cuntroller,
      decoration: InputDecoration(
        labelText: title,
      ),
    );
  }

  Widget _errobitch(){
    return Text(errortextapparently == ''?'': 'PERVERT ? $errortextapparently');
  }
  
  Widget _submitterrr(){
    return ElevatedButton(
      onPressed: isLoginfr? signwitemailpassWTVR: createFireUserWitEmailPass, 
      child: Text(isLoginfr? 'Loginnnn' : 'Register fucker'),
      );
  }

  Widget _loginRegistrwotttt(){
    return TextButton( 
      onPressed: (){
        setState(() {
          isLoginfr = !isLoginfr;
        });
      }, 
      child: Text(isLoginfr? 'Register Instead dumbass': 'Login whore')
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title:_tittle()),

      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _entryareaaaa('email', _emailshi),
            _entryareaaaa('passwordddddd', _passshi),
            _errobitch(),
            _submitterrr(),
            _loginRegistrwotttt(),
          ],
        ),
      ),
    
    );
  }
}