import 'package:flutter/material.dart';

class Menu_List extends StatelessWidget {
  final List<String> images = [
    "Assets/food6.jpg",
    "Assets/food1.jpg",
    "Assets/food3.jpg",
    "Assets/food4.jpg",
    "Assets/food2.jpg",
    "Assets/food5.jpg",
  ];

  final List<String> Foodnames = [
    "Jollof Rice....800naira",
    "Stir fry Pasta....2800naira",
    "Egusi Soup & Pounded yam....1800naira",
    "Chicken Sharwarma....2800naira",
    "White Rice....800naira",
    "Okro Soup....800naira",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Menu',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text(
                  'Available Dishes',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Call to Table",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.deepOrange,
                  ),
                ),
              ],
            ),

            SizedBox(
              height: 20,
            ),

            //menu cards
            Expanded(
              child: ListView.builder(
                itemCount: Foodnames.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 250,
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Align(
                        alignment: Alignment.bottomLeft, //align the text
                        child: Text(
                          Foodnames[index],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
