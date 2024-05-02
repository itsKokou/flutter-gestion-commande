import 'package:flutter/material.dart';
import 'package:flutter_projet1/pages/cart/cart.page.dart';
import 'package:flutter_projet1/pages/home/home.page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //plugin pour les composant à utiliser pour interface 
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/home",
      routes:{
        "/home" : (context)=> const HomePage(),
        "/cart" : (context)=> const CartPage(),
        },
      home: const HomePage(),
    );
  }
}
