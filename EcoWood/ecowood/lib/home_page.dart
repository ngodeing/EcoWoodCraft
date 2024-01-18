import 'dart:js';

import 'package:ecowood/camera_page.dart';
import 'package:ecowood/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final usernameController = TextEditingController();
  // final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    int _currentPageIndex = 0;
    void _changePage(int index) {
      setState(() {
        _currentPageIndex = index;
      });
      switch (index) {
        case 0:
          // Home page
          break;
        case 1:
          // History page
           Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ResultPage(),
            ),
          );
          break;
        case 2:
          // Camera page
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => CameraPage(),
            ),
          );
          break;
        case 3:
          // Ask page
          break;
        case 4:
          // Profile page
          break;
      }
      _currentPageIndex = index;
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            height: 175,
            // padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: Color(0xD1006333),
            ),
            child: Stack(
              children: [
                // Background Image
                Opacity(
                  opacity: 0.2,
                  child: Image.asset(
                      '../image/Header.jpeg', // Ganti dengan path gambar yang benar
                      width: MediaQuery.of(context).size.width,
                      height: 175,
                      fit: BoxFit.cover),
                ),
                // Content on top of the image
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Center(
                            child: Image.asset(
                              '../image/Question.png',
                              width: 14,
                              height: 14,
                            ),
                          ),
                          margin: EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 10),
                          width: 18,
                          height: 18,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: 15, left: 15, right: 15, bottom: 10),
                          child: Image.asset(
                            '../image/VIP.png',
                            width: 18,
                            height: 18,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: 15, left: 45, right: 20, bottom: 10),
                          child: Center(
                            child: Image.asset('../image/User.png'),
                          ),
                          // margin: EdgeInsets.only(left: 30, top: 40),
                          width: 65,
                          height: 65,
                          decoration: ShapeDecoration(
                            color: Color(0xFFD9D9D9),
                            shape: OvalBorder(),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 12),
                              width: 105,
                              height: 22,
                              child: Text(
                                'Username',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 3),
                              width: 105,
                              height: 22,
                              child: Text(
                                'Free Account',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w200,
                                  height: 0,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(top: 15, left: 0, right: 0, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              '../image/Smart_scan.png',
                              width: 38,
                              height: 38,
                            ),
                            Text(
                              'Smart Scan',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                height: 2,
                              ),
                            )
                          ],
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              '../image/Import_image.png',
                              width: 38,
                              height: 38,
                            ),
                            Text(
                              'Import Image',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                height: 2,
                              ),
                            )
                          ],
                        )),
                    GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              '../image/Customize.png',
                              width: 38,
                              height: 38,
                            ),
                            Text(
                              'Customize',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w200,
                                height: 2,
                              ),
                            )
                          ],
                        ))
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 25),
              // padding:
              //     EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Just Now',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                      height: 2,
                    ),
                  ),
                ],
              )),
          Container(
            margin: EdgeInsets.only(top: 5),
            padding: EdgeInsets.only(top: 15, left: 49, right: 49, bottom: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      '../image/Picture.png',
                      width: 45,
                      height: 45,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            children: [
                              Text(
                                'Project 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '2024-01-10 12:45',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w100,
                                  height: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Image.asset(
                      '../image/Picture.png',
                      width: 45,
                      height: 45,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            children: [
                              Text(
                                'Project 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '2024-01-10 12:45',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w100,
                                  height: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 13,
                ),
                Row(
                  children: [
                    Image.asset(
                      '../image/Picture.png',
                      width: 45,
                      height: 45,
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 15, top: 10),
                          child: Column(
                            children: [
                              Text(
                                'Project 1',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w700,
                                  height: 0,
                                ),
                              ),
                              Text(
                                '2024-01-10 12:45',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w100,
                                  height: 3,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.green,
        currentIndex: _currentPageIndex,
        onTap: _changePage,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
          ),
        ],
      ),
    );
  }
}
