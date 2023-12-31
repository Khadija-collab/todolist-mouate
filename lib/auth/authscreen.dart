import 'package:flutter/material.dart';
import 'package:todo_app/auth/authform.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text('Authentication')),
      body: const AuthForm(),
    );
    
  }
}