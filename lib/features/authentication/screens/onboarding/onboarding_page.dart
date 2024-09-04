import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:patakazi/utils/constants/sizes.dart';
import 'package:patakazi/utils/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.8,
            height: THelperFunctions.screenHeight() * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineLarge,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }
}
