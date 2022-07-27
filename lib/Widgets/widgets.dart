import 'package:flutter/material.dart';

import '../Util/colors.dart';

class Widgets {
  // Landing Page App Bar Widgets
  AppBar homePageAppbar(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: kWhiteColor,
      leading: IconButton(
        iconSize: 15,
        onPressed: (() {}),
        icon: const Image(
          image: AssetImage('assets/icons/icons8_Sheets_64px_2.png'),
        ),
      ),
      centerTitle: true,
      title: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(fontWeight: FontWeight.bold, fontSize: 24.0),
          children: const [
            TextSpan(
              text: "Cool",
              style: TextStyle(color: kSecondaryColor),
            ),
            TextSpan(
              text: "Food",
              style: TextStyle(color: kPrimaryColor),
            ),
          ],
        ),
      ),
      actions: [
        IconButton(
          iconSize: 17,
          onPressed: () {},
          icon: const Image(
            image: AssetImage('assets/icons/icons8_Notification_48px.png'),
          ),
        ),
      ],
    );
  }
}
