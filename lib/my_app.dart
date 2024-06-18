import 'package:flutter/material.dart';
import 'package:slash_task/config/theme/app_theme.dart';
import 'package:slash_task/core/utils/routes_manager.dart';
import 'package:slash_task/presentation/home/home_page_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slash Task',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      initialRoute: RouteManager.homeScreenRoute,
      routes: {
        RouteManager.homeScreenRoute: (_)=> const HomePageScreen()
      },
    );
  }
}