import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:patakazi/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:patakazi/utils/constants/sizes.dart';
import 'package:patakazi/utils/constants/text_strings.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //!Headings
            Text(
              TTexts.forgotPassword,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),
            Text(
              TTexts.forgotPasswordSubTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            //!Text Fields
            TextFormField(
              decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(Iconsax.direct_right)),
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //!Submit Button
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => const ResetPassword()),
                    child: const Text(TTexts.submit)))
          ],
        ),
      ),
    );
  }
}
