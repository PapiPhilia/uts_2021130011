import 'package:flutter/material.dart';
import 'package:uts_2021130011/screens/home_screen.dart';


class MyLoginScreen extends StatefulWidget {
  const MyLoginScreen({super.key});

  @override
  State<MyLoginScreen> createState() => _MyLoginScreenState();
}

class _MyLoginScreenState extends State<MyLoginScreen>  {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context)  {
    return Scaffold(
      backgroundColor: Colors.white,
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
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: <Widget>[
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'email',
              ),
              validator: (value) {
                  if (value!.isEmpty) {
                    return 'isikan emailnya';
                  }
                  return null;
                },
            ),
            const SizedBox(
              height: 42,
            ),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'password',
              ),
              obscureText: true,
              validator: (value) {
                  if (value!.isEmpty) {
                    return 'isikan passwordnya';
                  }
                  return null;
                },
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              padding: const EdgeInsets.all(12),
                child: ElevatedButton(
                  child: const Text('Login'),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('successfully log in!'),
                    ),
                  );
                  Navigator.push(
                    context, 
                    MaterialPageRoute(builder: (context) => HomeScreen())
                  );
                }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}