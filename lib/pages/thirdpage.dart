import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  static const String id = 'thirdpage';

  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MaterialButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back_ios_rounded,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:12.0),
                          child: Icon(Icons.share),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Maruti Alto',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      '⭐ 4.8 (110 Reviews)',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Image(
                    image: AssetImage("images/alto.jpg"),
                    height: 200.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 240.0,top:20.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.circle_rounded,
                          size: 10.0,
                        ),
                        Icon(
                          Icons.circle_rounded,
                          size: 10.0,
                          color: Colors.grey,
                        ),
                        Icon(
                          Icons.circle_rounded,
                          size: 10.0,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 15.0,top: 10.0,bottom: 10.0),
                      child: Text(
                        'Overview',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0),
                    child: Text(
                      'The Maruti Suzuki Alto is a good city runabout that\'s quite zippy to drive.Like Read more...',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5.0,vertical: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.event_seat,
                            ),
                            Text(
                                '5 seats'
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                                Icons.battery_saver
                            ),
                            Text(
                                '510 Hp'
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                                Icons.speed_outlined
                            ),
                            Text(
                                '200 km/h'
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                                Icons.hdr_auto
                            ),
                            Text(
                                'Auto'
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                                Icons.shopping_bag_sharp
                            ),
                            Text(
                                '2 Bags'
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Text(
                        'Renter',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.person,
                        size: 30.0,
                      ),
                      Text(
                        'Aditya Agarwal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                      Icon(
                        Icons.textsms_rounded,
                      ),
                      Icon(
                        Icons.call,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 658.0),
            child: Container(
              height: 80.0,
              color: Colors.blueGrey[100],
              child: Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Row(
                      children: [
                        Text(
                          '\$450',
                          style: TextStyle(
                            fontSize: 50.0,
                          ),
                        ),
                        Text(
                          '/Day',
                          style: TextStyle(
                              color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                    Material(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      child: MaterialButton(
                        onPressed: (){

                        },
                        height: 60.0,
                        minWidth: 200.0,
                        elevation: 8.0,
                        child: const Text(
                          'Rent Now',
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
                  ],
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
