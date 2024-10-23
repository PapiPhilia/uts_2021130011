import 'package:flutter/material.dart';

class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen>  {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Welcome to Shop',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w700,
            fontSize: 30,
          ),
        ),
      ),
      body: Form(
        child: TextFormField(
            
          ),
        ),
    );
  }
}