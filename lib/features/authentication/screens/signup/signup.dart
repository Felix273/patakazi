import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patakazi/common/widgets/login_signup/form_divider.dart';
import 'package:patakazi/common/widgets/login_signup/social_buttons.dart';
import 'package:patakazi/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:patakazi/utils/constants/sizes.dart';
import 'package:patakazi/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            ///title
            const Text(
              TTexts.welcomepage1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 46,
                color: Color(0xFF537832),
              ),
            ),
            Text(
              TTexts.createAccount,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            //!Form
            const SignupForm(),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            //!Divider
            TFormDivider(dividerText: TTexts.orSignUpWith.capitalize!),

            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),

            //Social Buttons
            const TSocialButtons(),
            const SizedBox(
              height: TSizes.spaceBtwSections,
            ),
          ],
        ),
      ),
    );
  }
}
