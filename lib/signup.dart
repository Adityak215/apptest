import 'package:apptest/myprovider.dart';
import 'package:flutter/material.dart';
import 'home.dart';
import 'package:provider/provider.dart';


class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  
  final usern = TextEditingController();
  final pass = TextEditingController();
  @override
  void initState() {
    super.initState();
    //passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Signup Page Nigaaaa'),
        titleTextStyle: const TextStyle(fontFamily: 'Crunchy Time'),
      ),

      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[

            // Padding(
            //   padding: const EdgeInsets.all(20),
            //   child: Consumer<Countpro>(builder: (context, value, child) {
            //     return Text(value.count.toString(),
            //     style: const TextStyle(fontSize: 40),
            //       );
            //   },)
            // ),

            // Consumer<Boolprovider>(builder: (context, value, child) {
            //   return Visibility(
            //     visible: value.showkey,
            //     child: //Text(visualprovider.showkey.toString()),
            //     Text('Welcome, "${pass.text}" was your Password'),
            //     );
            // },),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: usern,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Enter Your EMAIL',
                  labelText: "Email signup",
                ),
              ),
            ),
            Consumer<Boolprovider>(builder: (context, value,child){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: pass,
                  obscureText: value.passwordVisible,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.password),
                    hintText: "Password",
                    labelText: "Password",
                    helperText: "Password must contain special character",
                    helperStyle:
                         TextStyle(color: Theme.of(context).colorScheme.primary,),
                    suffixIcon: IconButton(
                      icon: Icon(value.passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        // setState(
                        //   () {
                        //     passwordVisible = !passwordVisible;
                        //   },
                        // );
                          value.setpass();
                        },
                      ),
                      alignLabelWithHint: false,
                      filled: true,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                );
            },),
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


            // Consumer<Boolprovider>(builder: (context, value, child) {
            //   return Padding(
            //     padding: const EdgeInsets.all(10),
            //     child: ElevatedButton(
            //       onPressed: () {
            //         // setState(() {
            //         //   showkey = !showkey;
            //         // });
            //         value.setkey();
            //       },
            //       child: const Text(
            //         'Show me da money',
            //         style: TextStyle(
            //             fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
            //         ),
            //       ),
            //     );
            // },),


            // Consumer<Countpro>(builder: (context, value, child) {
            //   return Padding(
            //     padding: const EdgeInsets.all(10),
            //     child: ElevatedButton(
            //       onPressed: () {
            //         value.setcount();
            //       },
            //       child: const Text(
            //         'TRYING pROVIDER',
            //         style: TextStyle(
            //             fontSize: 20.0, color: Color.fromARGB(255, 0, 0, 0)),
            //       ),
            //     ),
            //   );
            // },),
          ],
        ),
      ),
    );
  }
}
