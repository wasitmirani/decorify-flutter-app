import 'package:decorify/utils/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  static int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          index++;
          print(index);

          if (index == 2) {
            // Perform actions when index is 2
          }
          // setState(() => {});
        },
        child: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/splash-bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.width *
                    0.05, // 5% of screen width as left padding
                MediaQuery.of(context).size.height *
                    0.1, // 10% of screen height as top padding
                MediaQuery.of(context).size.width *
                    0.05, // 5% of screen width as right padding
                MediaQuery.of(context).size.height *
                    0.05, // 5% of screen height as bottom padding
              ),
              child: Center(
                child: Column(
                  children: [
                    Positioned(
                      top: MediaQuery.of(context).size.height *
                          0.1, // 10% of screen height from top
                      left: MediaQuery.of(context).size.width *
                          0.33, // 33% of screen width from left
                      child: Image.asset(
                        "assets/images/logo.png", // Replace with your logo image path
                        width: MediaQuery.of(context).size.width *
                            0.2, // 20% of screen width
                        height: MediaQuery.of(context).size.width *
                            0.2, // 20% of screen width
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Positioned(
                        top: 20,
                        left: 20,
                        child: Text(
                          'Hello',
                          style: heading_text_style,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                onPressed: () {
                  // Perform actions when the button is pressed
                },
                child: const Text('Button'),
              ),
            ),
            // Add more widgets as needed
          ],
        ),
      ),
    );
  }
}
