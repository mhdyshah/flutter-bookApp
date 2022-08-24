// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:bookapp/screens/home_screen.dart';
import 'package:bookapp/widgets/rounded_button.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/Bitmap.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: TextSpan(
                  // textTheme referes to textTheme style in main.dart
                  style: Theme.of(context).textTheme.displayMedium,
                  children: [
                    TextSpan(
                      text: "flamin",
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    TextSpan(
                      text: "go.",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.6,
                child: RoundedButton(
                  text: "start reading",
                  press: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return HomeScreen();
                        },
                      ),
                    );
                  },
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
