import 'package:flutter/material.dart';

import '../Util/colors.dart';

class ScrollableFood extends StatelessWidget {
  final String foodName;
  final String foodDescription;
  final String foodImage;
  const ScrollableFood({
    Key? key,
    required this.foodName,
    required this.foodDescription,
    required this.foodImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
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
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(0.13),
                shape: BoxShape.circle,
              ),
              child: Image(
                image: AssetImage(foodImage),
                width: 100,
              ),
            ),
            Text(
              foodName,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              foodDescription,
              style: const TextStyle(fontSize: 12.0),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            )
          ],
        ),
      ),
    );
  }
}
