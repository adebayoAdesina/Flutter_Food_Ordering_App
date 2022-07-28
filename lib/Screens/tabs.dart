import 'package:flutter/material.dart';
import 'package:food_ordering_ui_app/Util/colors.dart';
import 'home_page.dart';

enum TabSelected { home, like, history, profile }

class Tabs extends StatefulWidget {
  const Tabs({Key? key}) : super(key: key);

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<dynamic> categoryItem = const [
    HomePage(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  TabSelected navigatorSelected = TabSelected.home;
  int currentPage = 0;
  void setTab(TabSelected set, int index) {
    setState(() {
      navigatorSelected = set;
      currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: categoryItem[currentPage],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 75.0,
          width: double.infinity,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, -7), blurRadius: 33, color: kPrimaryColor)
            ],
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(40.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {
                  setTab(TabSelected.home, 0);
                },
                icon: Icon(
                  Icons.home,
                  color: navigatorSelected == TabSelected.home
                      ? kPrimaryColor
                      : kSecondaryColor,
                  size: navigatorSelected == TabSelected.home ? 40 : 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setTab(TabSelected.like, 1);
                },
                icon: Icon(
                  Icons.thumb_up,
                  color: navigatorSelected == TabSelected.like
                      ? kPrimaryColor
                      : kSecondaryColor,
                  size: navigatorSelected == TabSelected.like ? 40 : 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setTab(TabSelected.history, 2);
                },
                icon: Icon(
                  Icons.history,
                  color: navigatorSelected == TabSelected.history
                      ? kPrimaryColor
                      : kSecondaryColor,
                  size: navigatorSelected == TabSelected.history ? 40 : 28,
                ),
              ),
              IconButton(
                onPressed: () {
                  setTab(TabSelected.profile, 3);
                },
                icon: Icon(
                  Icons.person,
                  color: navigatorSelected == TabSelected.profile
                      ? kPrimaryColor
                      : kSecondaryColor,
                  size: navigatorSelected == TabSelected.profile ? 40 : 28,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
