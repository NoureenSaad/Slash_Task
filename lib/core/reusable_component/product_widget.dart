import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:slash_task/core/utils/colors_manager.dart';

class ProductWidget extends StatefulWidget {
  String? imagePath;
  String? name;
  num? price;

  ProductWidget({super.key, this.imagePath, this.name, this.price});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image(
                  height: 150,
                  width: 150,
                  image: AssetImage(widget.imagePath ?? ""),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.name ?? "",
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.labelMedium,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("EGP ${widget.price ?? ""}",
                        style: Theme.of(context).textTheme.labelSmall),
                    Icon(Icons.add_circle_outlined,
                        color: ColorsManager.textColor),
                  ],
                ),
              ],
            )
          ],
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 26,
              width: 26,
              decoration: BoxDecoration(
                  color: Color(0xffeeeeee), shape: BoxShape.circle),
            ),
            IconButton(
                onPressed: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: ColorsManager.textColor,
                  size: 20,
                )),
          ],
        ),
      ],
    );
  }
}
