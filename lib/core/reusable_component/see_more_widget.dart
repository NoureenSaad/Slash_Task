import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../utils/strings_manager.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(StringsManager.seeMore,style: Theme.of(context).textTheme.headlineMedium?.copyWith(
          fontWeight:FontWeight.w500
        ),),
        const SizedBox(width: 5,),
        SvgPicture.asset("assets/icons/arrow.svg",)
      ],
    );
  }
}
