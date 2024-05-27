import 'package:flutter/material.dart';
import 'package:quicklogin/CustomWidgets/textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromRGBO(42, 45, 62, 1), // Top left
                Color.fromRGBO(33, 58, 77, 1), // Center
                Color.fromRGBO(30, 56, 55, 1), // Bottom right
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'English US',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 95,
                  ),
                  Image.asset(
                    'assets/logo.png',
                    height: 63,
                  ),
                  const SizedBox(height: 100),
                  const TxtBox(
                    textHint: 'Username,Email or mobile number',
                  ),
                  const SizedBox(height: 10),
                  const TxtBox(
                    textHint: 'Password',
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: 390,
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your login logic here
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(
                            0xFF0064E0), // Set the background color to rgb(0, 100, 224)
                        minimumSize: const Size(double.infinity, 48),
                      ),
                      child: const Text(
                        'Log in',
                        style: TextStyle(color: Colors.white, fontSize: 17.5),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Add your forgot password logic here
                    },
                    child: const Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(
                    height: 210,
                  ),
                  SizedBox(
                    width: 360,
                    child: OutlinedButton(
                      // width: 360,
                      onPressed: () {
                        // Add your create new account logic here
                      },
                      style: OutlinedButton.styleFrom(
                        foregroundColor: const Color(
                            0xFF5199F0), // Set the text color to rgb(81, 153, 240)
                        side: const BorderSide(
                            color: Color(
                                0xFF5199F0)), // Set the outline border color to rgb(81, 153, 240)
                        minimumSize: const Size(double.infinity,
                            45), // Set the minimum size of the button
                      ),

                      child: const Text(
                        'Create new account',
                        style: TextStyle(fontSize: 17.5),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  // Image.asset('assets/meta.png', height: 40),
                  const Text("Meta",
                      style: TextStyle(color: Colors.white, fontSize: 18)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
