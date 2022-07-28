import 'package:flutter/material.dart';

import '../Util/colors.dart';

class DiscountCard extends StatelessWidget {
  const DiscountCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Offers & Discounts",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: kTextColor),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          width: double.infinity,
          height: 220,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image:
                  AssetImage('assets/images/turkey_food_PNG14.png'),
            ),
          ),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                colors: [
                  kPrimaryColor.withOpacity(0.6),
                  kSecondaryColor.withOpacity(0.8)
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Get Discount of",
                  style: TextStyle(fontSize: 16, color: kWhiteColor),
                ),
                Text(
                  "25%",
                  style: TextStyle(
                      fontSize: 43,
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor),
                ),
                Text(
                  "at coolFood on your first order & Instance cashback",
                  style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
