import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patakazi/common/widgets/login_signup/success_screen/success_screen.dart';
import 'package:patakazi/features/authentication/screens/login/login.dart';
import 'package:patakazi/utils/constants/image_strings.dart';
import 'package:patakazi/utils/constants/sizes.dart';
import 'package:patakazi/utils/constants/text_strings.dart';
import 'package:patakazi/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        //padding to give Default Equal space on all sides in the screens
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              //!Image
              Image(
                image: AssetImage(TImages.verificationImage),
                width: THelperFunctions.screenWidth() * 0.8,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //!Title &Subtitle
              Text(
                TTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                "support@gmail.com",
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              Text(
                TTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //!Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: TImages.successImage,
                          title: TTexts.yourAccountCreatedTitle,
                          subTitle: TTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(TTexts.tContinue)),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text(TTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
