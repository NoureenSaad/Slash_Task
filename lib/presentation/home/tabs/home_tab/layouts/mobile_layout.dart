import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:slash_task/core/utils/colors_manager.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/best_selling/widgets/best_selling_list.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/categories/categories_list.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/new_arrival/widgets/new_arrival_list.dart';
import 'package:slash_task/presentation/home/tabs/home_tab/recommended/widgets/recommended_list.dart';

class MobileLayout extends StatefulWidget {
  MobileLayout({super.key});

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slash."),
        actions: [
          SvgPicture.asset("assets/icons/Location.svg"),
          SizedBox(
            width: 30,
          ),
          SvgPicture.asset("assets/icons/Notifcation_Icon.svg"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 45,
                width: 290,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: ColorsManager.searchBarColor,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Row(
                    children: [
                      Icon(Icons.search_outlined,
                          size: 20, color: ColorsManager.searchIconColor),
                      Text(
                        "Search here..",
                        style: Theme.of(context).textTheme.headlineSmall,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                  height: 45,
                  width: 47,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: ColorsManager.searchBarColor,
                  ),
                  child: Icon(
                    Icons.format_list_bulleted_rounded,
                    size: 18,
                    color: ColorsManager.searchIconColor,
                  )),
            ],
          )),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 15,
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
                        width: 500,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/ad.png",
                        width: 500,
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        "assets/images/ad.png",
                        width: 500,
                        fit: BoxFit.cover,
                      )),
                ],
                options: CarouselOptions(
                  viewportFraction: 0.8,
                  enlargeCenterPage: true,
                  height: 180,
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
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 150, child: CategoriesList()),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 210, child: BestSellingList()),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 210, child: NewArrivalList()),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(height: 210, child: RecommendedList()),
            ),
          )
        ],
      ),
    );
  }
}
