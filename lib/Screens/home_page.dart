import 'package:flutter/material.dart';
import 'package:food_ordering_ui_app/Widgets/category_item.dart';
import 'package:food_ordering_ui_app/Widgets/scrollable_food.dart';
import 'package:food_ordering_ui_app/Widgets/search_widget.dart';

import '../Widgets/discount_card.dart';
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

  List<Map<String, dynamic>> foods = [
    {
      'foodName': 'Burger & Beer',
      'foodDescription': 'MacDonald\'s',
      'foodImage': 'assets/images/Burger.png',
    },
    {
      'foodName': 'Turkey',
      'foodDescription': 'MacDonald\'s',
      'foodImage': 'assets/images/turkey_food_PNG14.png',
    },
    {
      'foodName': 'Burger & Beer',
      'foodDescription': 'MacDonald\'s',
      'foodImage': 'assets/images/Burger.png',
    },
    {
      'foodName': 'Turkey',
      'foodDescription': 'MacDonald\'s',
      'foodImage': 'assets/images/turkey_food_PNG14.png',
    },
    {
      'foodName': 'Burger & Beer',
      'foodDescription': 'MacDonald\'s',
      'foodImage': 'assets/images/Burger.png',
    },
    {
      'foodName': 'Turkey',
      'foodDescription': 'MacDonald\'s',
      'foodImage': 'assets/images/turkey_food_PNG14.png',
    }
  ];

  int categorySelected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Widgets().homePageAppbar(context),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              SearchWidget(
                onChange: (value) {
                  print(value);
                },
              ),
              SizedBox(
                height: 70,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  clipBehavior: Clip.none,
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
              SizedBox(
                height: 240,
                child: ListView.builder(
                    itemCount: foods.length,
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.none,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final food = foods[index];
                      return ScrollableFood(
                        foodName: food['foodName'],
                        foodDescription: food['foodDescription'],
                        foodImage: food['foodImage'],
                      );
                    }),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const DiscountCard()
            ],
          ),
        ),
      ),
    );
  }
}
