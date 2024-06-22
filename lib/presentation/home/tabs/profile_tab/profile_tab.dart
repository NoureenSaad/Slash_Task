import 'package:flutter/material.dart';
import 'package:slash_task/core/utils/colors_manager.dart';
import 'package:slash_task/core/utils/strings_manager.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(StringsManager.titleName)),
      body: const Center(
        child: Icon(Icons.account_circle_outlined,color: ColorsManager.searchIconColor,),
      ),
    );
  }
}
