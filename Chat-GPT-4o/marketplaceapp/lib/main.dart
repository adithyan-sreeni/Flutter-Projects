import 'package:flutter/material.dart';

import 'package:marketplaceapp/categorySelector.dart';
import 'package:marketplaceapp/furnitureCard.dart';
import 'package:marketplaceapp/navbar.dart';

void main() {
  runApp(const FrankoApp());
}

class FrankoApp extends StatefulWidget {
  const FrankoApp({super.key});

  @override
  State<FrankoApp> createState() => _FrankoAppState();
}

class _FrankoAppState extends State<FrankoApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'NotesBuddy',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: ,
      appBar: AppBar(
        // backgroundColor: const Color.fromRGBO(28, 30, 42, 1),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text('NotesBuddy'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
            style:
                ButtonStyle(iconColor: WidgetStateProperty.all(Colors.black)),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: "Search for friends in need of help...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
            ),
          ),
          SizedBox(
            height: 152,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CategoryIcon(
                  icon: Icons.menu_book_sharp,
                  label: 'Notes',
                  selected: false,
                  // onTap: null,
                ),
                CategoryIcon(
                  icon: Icons.assignment,
                  label: 'assignments',
                ),
                CategoryIcon(icon: Icons.menu_book_rounded, label: 'records'),
                CategoryIcon(icon: Icons.plumbing, label: 'projects'),
                CategoryIcon(icon: Icons.bed, label: 'Closet'),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16.0),
              children: const [
                FurnitureCard(
                  imageUrl: 'https://via.placeholder.com/150',
                  name: 'Fanbyn',
                  description: 'Ideal for relaxing after a busy day.',
                  price: 79.6,
                ),
                FurnitureCard(
                  imageUrl: 'https://via.placeholder.com/150',
                  name: 'Eggelstad',
                  description: 'The classic chair for your dining room.',
                  price: 82.5,
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.black,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 20,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(6.5),
          child: const NavBar2(),
        ),
      ),
    );
  }
}
