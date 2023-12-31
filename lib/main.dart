import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/auth/authscreen.dart';
import 'package:todo_app/screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyDMQpLl6dNOF0sJsQf3a5Q4ljGwsnm9diU",
      authDomain: "todoapp-ed5f3.firebaseapp.com",
      projectId: "todoapp-ed5f3",
      storageBucket: "todoapp-ed5f3.appspot.com",
      messagingSenderId: "1026661719702",
      appId: "1:1026661719702:android:e850e656d657ac0a49ecb7",
    ),
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, usersnapshot) {
          if (usersnapshot.hasData) {
            return const Home();
          } else {
            return const AuthScreen();
          }
        },
      ),
      debugShowCheckedModeBanner: false,
theme: ThemeData(
  brightness: Brightness.dark,
  primaryColor: Color.fromARGB(255, 251, 195, 20), // Ajoutez une virgule ici
),
    );
  }
}


  


