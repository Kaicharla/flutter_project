import 'package:first_app/pages/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/firstscreen.png', // Replace with your image asset path
              fit: BoxFit.cover,
            ),
          ),
          // Log In button
          Positioned(
            left: 60,
            right: 60,
            bottom: 180,
            child: ElevatedButton(
              onPressed: () {
                // Navigate to the login screen
              },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Log In',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Greater than symbol button
          Positioned(
            right: 55,
            bottom: 190,
            child: RawMaterialButton(
              onPressed: () {
                // Add your functionality here
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SignUpScreen(),
                ));
              },
              elevation: 2.0,
              fillColor: const Color.fromRGBO(109, 96, 248, 1),
              padding: const EdgeInsets.all(15.0),
              shape: CircleBorder(),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Color.fromARGB(255, 255, 255, 255),
                size: 20.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
