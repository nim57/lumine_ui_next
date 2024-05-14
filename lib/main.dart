
import 'package:flutter/material.dart';
import 'package:lumine_project_la/Controllers/mainscreen_provider.dart';
import 'package:lumine_project_la/Controllers/product_provider.dart';
import 'package:lumine_project_la/Views/ui/cartpage_men.dart';
import 'package:lumine_project_la/Views/ui/product_by_cart.dart';
import 'package:lumine_project_la/Views/ui/view_pack.dart';
import 'package:provider/provider.dart';
import 'Views/ui/main_screen.dart';

void main() {
  runApp(MultiProvider(
      providers:[
        ChangeNotifierProvider(create:(context)=> MainScreenNoTifier()),
        ChangeNotifierProvider(create: (context) => ProductNotifier()),
      ],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  Pageviev_men(),
      debugShowCheckedModeBanner: false,
    );
  }
}

