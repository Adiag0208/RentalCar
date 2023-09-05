import 'package:flutter/material.dart';
import 'package:rentalcar/pages/thirdpage.dart';

class SecondPage extends StatefulWidget {
  static const String id = 'secondpage';

  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:[
          SingleChildScrollView(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 50.0),
                        child: Icon(
                          Icons.view_day_sharp,
                          color: Colors.black,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 70.0),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on_rounded,
                              color: Colors.black,
                            ),
                            Text(
                              'Dhanbad,India',
                              style: TextStyle(color: Colors.black, fontSize: 20.0),
                            ),
                            Icon(
                              Icons.keyboard_arrow_down_rounded,
                              size: 40.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Icon(
                          Icons.account_box,
                          size: 40.0,
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 30.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Let\'s find your favourite car here',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding:
                      const EdgeInsets.only(left: 8.0, top: 20.0),
                      child: SizedBox(
                        height: 60.0,
                        width: 350.0,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Find Your Car',
                              prefixIcon: Icon(Icons.search),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              )),
                        ),
                      ),
                    ),
                    const Icon(Icons.filter_list, size: 50.0),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Trending Brands',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                                color: Colors.blueGrey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(
                        image: AssetImage("images/mercedes.png"),
                        height: 70.0,
                      ),
                      Image(
                        image: AssetImage("images/audi.png"),
                        height: 70.0,
                      ),
                      Image(
                        image: AssetImage("images/tesla.png"),
                        height: 70.0,
                      ),
                      Image(
                        image: AssetImage("images/ferrari.png"),
                        height: 70.0,
                      ),
                      Image(
                        image: AssetImage("images/nissan.png"),
                        height: 70.0,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left:8.0),
                      child: Text(
                        'New Cars',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: Row(
                        children: [
                          Text(
                            'View All',
                            style: TextStyle(
                                color: Colors.blueGrey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_rounded,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,top: 10.0,bottom: 10.0,right: 18.0),
                        child: Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(image: AssetImage("images/alto.jpg"),
                                height: 150.0,
                              ),
                              Column(
                                children: [
                                  Text('Maruti Alto',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),
                                  ),
                                  Text('\$450/Day',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Text('⭐ 4.8',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      MaterialButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, ThirdPage.id);
                                        },
                                        child: Text(
                                          'Rent Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        elevation: 8.0,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(Icons.thumb_up)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10.0,top: 10.0,bottom: 10.0,right: 18.0),
                        child: Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),

                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image(image: AssetImage("images/bmw.jpg"),
                                height: 150.0,
                              ),
                              Column(
                                children: [
                                  const Text('BMW',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0,
                                    ),),
                                  Text('\$600/Day',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15.0,
                                    ),),
                                  Text('⭐ 4.8',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize:15.0,
                                    ),),
                                  Row(
                                    children: [
                                      MaterialButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, ThirdPage.id);
                                        },
                                        child: Text(
                                          'Rent Now',
                                          style: TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        elevation: 8.0,
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        width: 5.0,
                                      ),
                                      Icon(Icons.thumb_up)
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80.0,
                ),
              ],

            ),
          ),

          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 80.0,
              color: Colors.blueGrey[100],
              child: const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.image_search),
                        Text('Explore',
                        style: TextStyle(
                          color: Colors.black
                        ),),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.bookmark,
                          color: Colors.grey,),
                        Text('Saved'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.notifications,
                          color: Colors.grey,),
                        Text('Notifications'),
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.settings,
                          color: Colors.grey,),
                        Text('Settings'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// class MyDrawer extends StatefulWidget {
//   const MyDrawer({super.key});
//
//   @override
//   State<MyDrawer> createState() => _MyDrawerState();
// }
//
// class _MyDrawerState extends State<MyDrawer> {
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       backgroundColor: Colors.grey[300],
//     );
//   }
// }
