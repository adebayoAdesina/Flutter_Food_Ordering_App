import 'package:flutter/material.dart';

import '../Util/colors.dart';

class SearchWidget extends StatelessWidget {
  final ValueChanged<String> onChange;
  const SearchWidget({
    Key? key,
    required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20.0, bottom: 20.0),
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        border: Border.all(
          color: kSecondaryColor.withOpacity(0.32),
        ),
      ),
      child: TextField(
        onChanged: onChange,
        decoration: InputDecoration(
          border: InputBorder.none,
          icon: const Icon(
            Icons.search,
            color: kSecondaryColor,
          ),
          hintText: "Search Here...",
          hintStyle: TextStyle(
            color: kSecondaryColor.withOpacity(0.2),
          ),
        ),
      ),
    );
  }
}
