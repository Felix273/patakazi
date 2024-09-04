import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:patakazi/features/authentication/screens/onboarding/onboarding_page.dart';
import 'package:patakazi/features/authentication/screens/onboarding/welcome.dart';
import 'package:patakazi/utils/constants/colors.dart';
import 'package:patakazi/utils/constants/image_strings.dart';
import 'package:patakazi/utils/constants/sizes.dart';
import 'package:patakazi/utils/constants/text_strings.dart';
import 'package:patakazi/utils/device/device_utility.dart';
import 'package:patakazi/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF537832),
      body: Stack(
        children: [
          //Horizontal scrollable page
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingLightImage,
                title: TTexts.onboardingText1,
                subTitle: TTexts.onboardingText2,
              ),
            ],
          ),
          //!circular button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarheight(),
      child: ElevatedButton(
        onPressed: () {
          Get.to(WelcomePage());
        },
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? TColors.primary : Colors.black),
        child: const Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
