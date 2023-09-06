import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List foods = ["Burger", "Pizza", "Snacks", "Water"];

  List foods2 = [
    "Chicken Burger",
    "Cheese Pizza",
  ];

  List<Color> bgColors = [
    Color(0xFFFBDCDA),
    Color(0xFFD4EEF3),
    Color(0xFFFAE6D5),
    Color(0xFFEFCFE7),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(17, 20, 37, 1.000),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),

            // AppBar start

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                            color: Color(0xFFE2646D),
                          ))
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                              image: AssetImage("assets/images/profile2.jpeg"),
                              fit: BoxFit.cover),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),

            // AppBar End

            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Good Food.',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Fast Delivery.',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('assets/images/banner.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE2646D),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: foods.length,
                  itemBuilder: ((context, index) {
                    return Container(
                      width: 100,
                      margin: EdgeInsets.only(left: 15),
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                          color: bgColors[index],
                          borderRadius: BorderRadius.circular(10)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            "assets/images/${foods[index]}.png",
                            height: 80,
                            width: 80,
                          ),
                          Text(
                            foods[index],
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                    );
                  })),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Now",
                    style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFFE2646D),
                        ),
                      ))
                ],
              ),
            ),
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: foods2.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      margin: EdgeInsets.only(
                        left: 15,
                        top: 5,
                        bottom: 5,
                        right: 5,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black45,
                              blurRadius: 4,
                              spreadRadius: 2,
                            )
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                            ),
                            child: Image.asset(
                              "assets/images/${foods2[index]}.jpg",
                              width: MediaQuery.of(context).size.width / 1.4,
                              height: 120,
                              fit: BoxFit.cover,
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
