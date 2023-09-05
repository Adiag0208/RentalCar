import 'package:flutter/material.dart';
import 'package:rentalcar/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  static const String id = 'firstpage';

  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100.0,right:100.0),
            child: Image(
              image: AssetImage("images/lambo1.png"),
              height: 200.0,
              width: 500.0,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60.0,left: 20.0,right: 20.0),
            child: Text(
              "Let's Start A New Experience",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
                color: Colors.white
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10.0,left: 20.0,right: 20.0),
            child: Text(
                "Choose your favourite car, rent it and enjoy new experience",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 100.0,left: 20.0,right: 20.0),
            child: Material(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              child: MaterialButton(
                onPressed: (){
                    Navigator.pushNamed(context, SecondPage.id);
                },
                height: 80.0,
                minWidth: 500.0,
                elevation: 8.0,
                child: const Text(
                  'Get Started',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                      fontFamily: 'Zen Antique',
                      color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
