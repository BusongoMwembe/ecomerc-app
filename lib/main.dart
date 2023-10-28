import 'package:flutter/material.dart';
import 'package:pro2/Pages/intro_page.dart';
import 'package:pro2/model/cart.dart';
import 'package:provider/provider.dart';

import 'Pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context)=>Cart(),
      builder: (context,child)=> MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const IntroPage(),
    ));
  }
}
