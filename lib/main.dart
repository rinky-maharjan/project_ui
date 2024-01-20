import 'package:flutter/material.dart';
import 'pages/login_page.dart';
//import 'package:firebase_core/firebase_core.dart';

main(){
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}