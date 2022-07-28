import 'package:flutter/material.dart';
import 'package:food_ordering_ui_app/Util/colors.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

import '../Widgets/widgets.dart';

class ProductPage extends StatelessWidget {
  final Map<String, dynamic> foodDetail;
  const ProductPage({Key? key, required this.foodDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String lorem = 'Lorem ' * 60;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kSecondaryColor,
      appBar: Widgets().productAppBar(context),
      body: LayoutBuilder(
        builder: (context, constraint) => SingleChildScrollView(
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraint.maxHeight),
            child: IntrinsicHeight(
              child: Column(
                children: [
                  Image.asset(
                    foodDetail['foodImage'],
                    height: size.height * 0.25,
                    fit: BoxFit.fill,
                  ),
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10.0),
                      padding: const EdgeInsets.all(20.0),
                      decoration: const BoxDecoration(
                        color: kWhiteColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          topRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.location_on,
                                          color: Colors.black26,
                                        ),
                                        const SizedBox(
                                          width: 10.0,
                                        ),
                                        Text(
                                          foodDetail['foodDescription'],
                                          style: const TextStyle(
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 20.0,
                                    ),
                                    Text(
                                      foodDetail['foodName'],
                                      style: const TextStyle(fontSize: 30.0),
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                    Row(
                                      children: [
                                        SmoothStarRating(
                                          color: kSecondaryColor,
                                          rating: foodDetail['star'],
                                        ),
                                        const SizedBox(
                                          width: 25.0,
                                        ),
                                        Text(
                                          ' ${foodDetail['reviews']} reviews',
                                          style: const TextStyle(
                                            color: Colors.black26,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              ClipPath(
                                clipper: PriceClip(),
                                child: Container(
                                  alignment: Alignment.center,
                                  height: 70,
                                  width: 65,
                                  color: kSecondaryColor,
                                  child: Text(
                                    '\$15',
                                    style: Theme.of(context)
                                        .textTheme
                                        .titleMedium!
                                        .copyWith(
                                            color: kWhiteColor,
                                            fontWeight: FontWeight.bold),
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            lorem,
                            style: const TextStyle(
                              color: Colors.black45,
                              fontSize: 20.0,
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 60,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 20.0),
                            decoration: BoxDecoration(
                              color: kSecondaryColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.badge,
                                  color: kWhiteColor,
                                ),
                                Text(
                                  'Order Now',
                                  style: TextStyle(
                                      color: kWhiteColor, fontSize: 20.0),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class PriceClip extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    Path path = Path();

    final width = size.width;
    final height = size.height;

    double ignoreHeight = 20;

    path.lineTo(0, height - ignoreHeight);
    path.lineTo(width / 2, height);
    path.lineTo(width, height - ignoreHeight);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
