import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar2 extends StatelessWidget {
  const NavBar2({super.key});

  @override
  Widget build(BuildContext context) {
    return const GNav(
        gap: 10,
        tabBackgroundColor: Color.fromARGB(255, 36, 35, 35),
        backgroundColor: Colors.black,
        tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
            iconColor: Colors.white,
            iconActiveColor: Colors.white,
            textColor: Colors.white,
          ),
          // GButton(
          //   icon: Icons.circle,
          //   text: 'Circle',
          // ),
          GButton(
            icon: Icons.chat_bubble,
            text: 'Chat',
            iconColor: Colors.white,
            iconActiveColor: Colors.white,
            textColor: Colors.white,
          ),
          GButton(
            icon: Icons.add_box_rounded,
            text: 'Create',
            iconColor: Colors.white,
            iconActiveColor: Colors.white,
            textColor: Colors.white,
          ),
          GButton(
            icon: Icons.person,
            text: 'Person',
            iconColor: Colors.white,
            iconActiveColor: Colors.white,
            textColor: Colors.white,
          ),
        ]);
  }
}
