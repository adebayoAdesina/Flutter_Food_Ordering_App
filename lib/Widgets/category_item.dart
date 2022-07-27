import 'package:flutter/material.dart';

import '../Util/colors.dart';

class CategoryItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final Function onTap;
  const CategoryItem({
    Key? key,
    required this.text,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          children: [
            Text(text,
                style: isSelected
                    ? const TextStyle(
                        color: kTextColor, fontWeight: FontWeight.bold)
                    : const TextStyle(fontSize: 12)),
            isSelected
                ? Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    height: 3.0,
                    width: 22.0,
                    decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.circular(10)),
                  )
                : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
