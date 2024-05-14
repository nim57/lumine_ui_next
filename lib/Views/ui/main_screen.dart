
import 'package:flutter/material.dart';
import 'package:lumine_project_la/Controllers/mainscreen_provider.dart';
import 'package:lumine_project_la/Views/shared/bottom_nav.dart';
import 'package:lumine_project_la/Views/ui/Category.dart';
import 'package:lumine_project_la/Views/ui/cartpage.dart';
import 'package:lumine_project_la/Views/ui/product_by_cart.dart';
import 'package:lumine_project_la/Views/ui/profile.dart';
import 'package:provider/provider.dart';



class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  List<Widget> pageList = const[
    ProductByCat(),
    Category(),
    ProductByCat(),


  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<MainScreenNoTifier>(
      builder: (context, mainScreenNoTifier, child) {
        return Scaffold(
          backgroundColor: const Color(0xFFE2E2E2),
          body: pageList[mainScreenNoTifier.pageIndex],
          bottomNavigationBar:const BottoNavBar(),
        );
      },
    );
  }
}







