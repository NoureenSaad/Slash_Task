import 'package:flutter/material.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/layouts/mobile_layout.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/layouts/web_layout.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context,constraints){
          if(constraints.maxWidth > 800){
            return const WebLayout();
          }
          else{
            return MobileLayout();
          }
        }
    );
  }
}
