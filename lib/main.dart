import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Sigmar',
        //primarySwatch: Colors.cyan,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        appBarTheme:  AppBarTheme(
          
          //color: Theme.of(context).colorScheme.onPrimary,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          //foregroundColor: Theme.of(context).colorScheme.inversePrimary,

        ),
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginPg(), //setting Loginpg class as first screen
    );
  }
}

class LoginPg extends StatefulWidget {
  const LoginPg({super.key});

  @override
  State<LoginPg> createState() => _LoginPgState();
}

class _LoginPgState extends State<LoginPg> {
  bool passwordVisible = false;
  bool showkey = false;
  final usern = TextEditingController();
  final pass = TextEditingController();
  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.primary,

        title: const Text('Login Page'),
        titleTextStyle: const TextStyle(fontFamily: 'Crunchy Time'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
                visible: showkey,
                child: Text('Welcome, "${pass.text}" was your Password')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: usern,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter Your Username',
                  labelText: "Username",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: pass,
                obscureText: passwordVisible,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  prefixIcon: const Icon(Icons.password),
                  hintText: "Password",
                  labelText: "Password",
                  helperText: "Password must contain special character",
                  helperStyle:
                       TextStyle(color: Theme.of(context).colorScheme.primary,),
                  suffixIcon: IconButton(
                    icon: Icon(passwordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                    onPressed: () {
                      setState(
                        () {
                          passwordVisible = !passwordVisible;
                        },
                      );
                    },
                  ),
                  alignLabelWithHint: false,
                  filled: true,
                ),
                keyboardType: TextInputType.visiblePassword,
                textInputAction: TextInputAction.done,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                    MaterialPageRoute(
                        builder: (context) => SecondScreen(
                              user: usern.text,
                              pass: pass.text,
                            )),
                  );
                },
                child: Text(
                  'Ted, just.. okay. just... Submit',
                  style: TextStyle(
                      fontSize: 18.0, color: Theme.of(context).colorScheme.primary,),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    showkey = !showkey;
                  });
                },
                child: const Text(
                  'Show me da money',
                  style: TextStyle(
                      fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
