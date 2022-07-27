import 'package:flutter/material.dart';
import 'package:food_ordering_ui_app/Util/colors.dart';
import 'package:food_ordering_ui_app/Widgets/category_item.dart';
import 'package:food_ordering_ui_app/Widgets/search_widget.dart';

import '../Widgets/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> categoryItem = [
    {'name': 'Combo Meal', 'bool': true},
    {'name': 'Chicken', 'bool': false},
    {'name': 'Beverage', 'bool': false},
    {'name': 'Snacks & Sides ', 'bool': false},
    {'name': 'Chicken', 'bool': false},
    {'name': 'Beverage', 'bool': false},
    {'name': 'Snacks & Sides ', 'bool': false},
  ];

  int categorySelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets().homePageAppbar(context),
      body: Column(
        children: [
          SearchWidget(
            onChange: (value) {
              print(value);
            },
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: categoryItem.length,
              itemBuilder: ((context, index) {
                var item = categoryItem[index];
                return CategoryItem(
                  text: item['name'],
                  onTap: () {
                    categoryItem[categorySelected]['bool'] = false;
                    setState(() {
                      categorySelected = index;
                    });
                    item['bool'] = true;
                  },
                  isSelected: item['bool'],
                );
              }),
            ),
          ),
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 4),
                      blurRadius: 20,
                      color: const Color(0XFFB0CCE1).withOpacity(0.32),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(25),
                      decoration: BoxDecoration(
                        color: kPrimaryColor.withOpacity(0.13),
                        shape: BoxShape.circle,
                      ),
                      child: Image(
                        image: AssetImage('assets/images/Burger.png'),
                        width: 150,
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
