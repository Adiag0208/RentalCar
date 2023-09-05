import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:rentalcar/pages/firstpage.dart';

class LoginPage extends StatefulWidget {
  static const String id = 'login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String? email;
  String? password;
  final _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          height: 420.0,
          width: 400.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
                child: TextField(
                  onChanged: (value){
                    email = value;
                  },
                  enabled: true,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    fillColor: Colors.black,
                    hintText: 'Enter Your Email',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0,right: 20.0,bottom: 10.0),
                child: TextField(
                  obscureText: true,
                  onChanged: (value){
                    password = value;
                  },
                  enabled: true,
                  textAlign: TextAlign.center,
                  decoration: const InputDecoration(
                    fillColor: Colors.black,
                    hintText: 'Enter Your Password',
                    contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 20.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(32.0)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: Material(
                  color: Colors.black,
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  child: MaterialButton(
                    onPressed: () async {
                      setState(() {

                      });
                      try{
                        await _auth.signInWithEmailAndPassword(email: email!, password: password!);
                        Navigator.pushNamed(context, FirstPage.id);
                      } catch(e){
                        print(e);
                        showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: const Text('Requires Authorization'),
                              content: const SingleChildScrollView(
                                child: ListBody(
                                  children: [
                                    Text('Your id is not registered.'),
                                    Text(
                                        'Please contact CSR Admin to get the access.'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.pop(context, 'Got it!');
                                    setState(() {

                                    });
                                  },
                                  child: const Text('Got it!'),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    },
                    height: 50.0,
                    minWidth: 250.0,
                    elevation: 8.0,
                    child: const Text(
                      'LOGIN',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                          fontFamily: 'Zen Antique',
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
