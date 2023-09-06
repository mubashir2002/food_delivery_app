import 'package:flutter/material.dart';
import 'package:food_ordering/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color.fromRGBO(17, 20, 37, 1.000),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/panda.png'),
          SizedBox(
            height: 5,
          ),
          Text(
            'Order Your Food Now',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 28,
                fontStyle: FontStyle.italic),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'order food and get delivery at your door',
            style: TextStyle(fontSize: 18, color: Colors.white54),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(350, 65),
              backgroundColor: Color(0xFFE2646D),
              shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.circular(30), // Adjust the value as needed
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: 10), // Adjust the value as needed
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 18,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
