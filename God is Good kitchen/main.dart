import 'package:flutter/material.dart';

import 'Menu_list.dart';

void main() => runApp(MaterialApp(
      home: PageApp(),
    ));

class PageApp extends StatelessWidget {
  const PageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          Container(
            color: Colors.deepOrange,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.food_bank_rounded,
                    size: 90,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Text(
                    "Welcome to God is Good Kitchen",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //page 2
          Container(
            color: Colors.deepOrange,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "Assets/totalfood.jpg",
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  Text(
                    ' Delicious reciepies, that will keep you lickin',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  //small text
                  Text(
                    'Discovery Delicious Nigerian reciepies in Abuja, we believe in trust and mutual agreement between our clients and give them deliciousness.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          //Page 3 CTA
          Container(
            color: Colors.deepOrange,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Icon(
                      Icons.food_bank_rounded,
                      size: 90,
                    ),

                    SizedBox(
                      height: 60,
                    ),

                    Text(
                      'Start your delicious Journey with us',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    //small text
                    const Spacer(),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Menu_List()));
                      },
                      child: Text(
                        "View our Menu",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
