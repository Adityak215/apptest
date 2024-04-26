import 'package:apptest/myprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// import 'login.dart';
// import 'signup.dart';
import 'widdattreee.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
      ChangeNotifierProvider(create: (_)=>Countpro()),
      ChangeNotifierProvider(create: (_)=>Boolprovider())
      ],
      child: MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sigmar',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme:  AppBarTheme(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const WidgetTREEE(), //setting Loginpg class as first screen
      )
    );
  }
}

