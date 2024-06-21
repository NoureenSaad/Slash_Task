import 'package:flutter/material.dart';
import 'package:slash_task/presentation/home/tabs/cart_tab/cart_tab.dart';
import 'package:slash_task/presentation/home/tabs/favorites_tab/favorites_tab.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/home_tab.dart';
import 'package:slash_task/presentation/home/tabs/profile_tab/profile_tab.dart';

import '../../core/utils/colors_manager.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = [
    HomeTab(),
    FavoritesTab(),
    CartTab(),
    ProfileTab()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: tabs[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            onTap: (value){
              setState(() {
                selectedIndex = value;
              });
            },
            currentIndex: selectedIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home,color: ColorsManager.searchIconColor,),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite_border,color: ColorsManager.searchIconColor),label: "Favorites"),
              BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,color: ColorsManager.searchIconColor),label: "Cart"),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined,color: ColorsManager.searchIconColor),label: "Profile"),
            ],
          ),
        )
    );
  }
}
