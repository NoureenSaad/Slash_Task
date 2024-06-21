import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_task/core/utils/colors_manager.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/best_selling/widgets/best_selling_grid.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/categories/categories_grid.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/recommended/widgets/recommended_grid.dart';
import '../new_arrival/widgets/new_arrival_grid.dart';

class WebLayout extends StatefulWidget {
  const WebLayout({super.key});

  @override
  State<WebLayout> createState() => _WebLayoutState();
}

class _WebLayoutState extends State<WebLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Slash."),
        actions: [
          Row(
            children: [
              Container(
                height: 45,
                width: 272,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorsManager.searchBarColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      const Icon(Icons.search_outlined,
                          size: 20, color: ColorsManager.searchIconColor),
                      Text(
                        "Search here..",
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              Container(
                  height: 45,
                  width: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorsManager.searchBarColor,
                  ),
                  child: const Icon(
                    Icons.format_list_bulleted_rounded,
                    size: 18,
                    color: ColorsManager.searchIconColor,
                  )),
            ],
          ),
          const SizedBox(
            width: 15,
          ),
          SvgPicture.asset("assets/icons/Location.svg"),
          const SizedBox(
            width: 20,
          ),
          SvgPicture.asset("assets/icons/Notifcation_Icon.svg"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: [
              CarouselSlider(
                items: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/ad.png",
                        width: 600,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/ad.png",
                        width: 600,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/ad.png",
                        width: 600,
                        fit: BoxFit.cover,
                      )),
                ],
                options: CarouselOptions(
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  height: 250,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return Container(
                    width: 8,
                    height: 8,
                    margin: const EdgeInsets.symmetric(
                        vertical: 10.0, horizontal: 2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: currentIndex == index
                          ? ColorsManager.searchIconColor
                          : Colors.grey,
                    ),
                  );
                }),
              ),
            ],
          )),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(height: 300, child: CategoriesGrid()),
                  ),
                ),
                const Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(height: 300, child: BestSellingGrid()),
                  ),
                ),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(height: 300, child: NewArrivalGrid()),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: SizedBox(height: 300, child: RecommendedGrid()),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
