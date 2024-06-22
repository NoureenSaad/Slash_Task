import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/strings_manager.dart';
import 'package:slash_task/presentation/home/tabs/cart_tab/cart_tab.dart';
import 'package:slash_task/presentation/home/tabs/favorites_tab/favorites_tab.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/home_tab.dart';
import 'package:slash_task/presentation/home/tabs/profile_tab/profile_tab.dart';
import 'package:slash_task/presentation/home/tabs/tab_widget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  int selectedIndex = 0;
  List<Widget> tabs = const [
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
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: TabWidget(tabTitle: StringsManager.homeTab, icon: Icons.home_outlined),
              label: "",
              activeIcon: TabWidget(tabTitle: StringsManager.homeTab, icon: Icons.home),
              ),
          BottomNavigationBarItem(
              icon: TabWidget(tabTitle: StringsManager.favoritesTab, icon: Icons.favorite_border),
              label: "",
              activeIcon: TabWidget(tabTitle: StringsManager.favoritesTab, icon: Icons.favorite_outlined),
              ),
          BottomNavigationBarItem(
              icon: TabWidget(tabTitle: StringsManager.cartTab, icon: Icons.shopping_cart_outlined),
              label: "",
              activeIcon: TabWidget(tabTitle: StringsManager.cartTab, icon: Icons.shopping_cart_rounded),
              ),
          BottomNavigationBarItem(
              icon: TabWidget(tabTitle: StringsManager.profileTab, icon: Icons.account_circle_outlined),
              label: "",
              activeIcon: TabWidget(tabTitle: StringsManager.profileTab, icon: Icons.account_circle_rounded),
              ),
        ],
      ),
    ));
  }
}
