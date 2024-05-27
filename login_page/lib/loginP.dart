import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    filled: true,
                    fillColor: const Color(
                        0xFF1C2A33), // Set the filled color to rgb(28, 42, 51)
                    hintStyle: const TextStyle(
                        color: Color(
                            0xFF747E87)), // Set hint color to rgb(116, 126, 135)
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(
                              0xFF747E87)), // Set outline color to rgb(116, 126, 135)
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: const Color(
                        0xFF1C2A33), // Set the filled color to rgb(28, 42, 51)
                    hintStyle: const TextStyle(
                        color: Color(
                            0xFF747E87)), // Set hint color to rgb(116, 126, 135)
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                          color: Color(
                              0xFF747E87)), // Set outline color to rgb(116, 126, 135)
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 360, // Set width to match parent width
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {
                      // Add your login logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                          0xFF0064E0), // Set the background color to rgb(0, 100, 224)
                    ),
                    child: const Text(
                      'Log in',
                      style: TextStyle(color: Colors.white, fontSize: 17.5),
                    ),
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(),
                  onPressed: () {},
                  child: const Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
