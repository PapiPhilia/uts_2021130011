import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  String selectedPage = '';

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Product'),
        actions: [
          IconButton(
            onPressed: () {
            }, 
            icon: const Icon(Icons.search),
          ),
        ],
      )
    );
  }
}