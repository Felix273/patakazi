import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:patakazi/features/authentication/controllers/signup/signup_controller.dart';
import 'package:patakazi/features/authentication/screens/signup/widgets/terms_and_condition.dart';
import 'package:patakazi/utils/constants/sizes.dart';
import 'package:patakazi/utils/constants/text_strings.dart';
import 'package:patakazi/utils/validators/validator.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) =>
                      Tvalidator.validateEmptyText('First name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.firstName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
              const SizedBox(
                width: TSizes.spaceBtwInputField,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) =>
                      Tvalidator.validateEmptyText('Last name', value),
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: TTexts.lastName,
                      prefixIcon: Icon(Iconsax.user)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),

          //!User Name

          TextFormField(
            validator: (value) =>
                Tvalidator.validateEmptyText('userName', value),
            controller: controller.userName,
            expands: false,
            decoration: const InputDecoration(
                labelText: TTexts.username,
                prefixIcon: Icon(Iconsax.user_edit)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),

          //!Email
          TextFormField(
            validator: (value) => Tvalidator.validateEmail(value),
            controller: controller.email,
            decoration: const InputDecoration(
                labelText: TTexts.email, prefixIcon: Icon(Iconsax.direct)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),

          //!Phone Number
          TextFormField(
            validator: (value) => Tvalidator.validatePhoneNumber(value),
            decoration: const InputDecoration(
                labelText: TTexts.phoneNo, prefixIcon: Icon(Iconsax.call)),
          ),
          const SizedBox(
            height: TSizes.spaceBtwInputField,
          ),

          //!Password
          TextFormField(
            validator: (value) => Tvalidator.validatePassword(value),
            controller: controller.password,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: TTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye_slash),
            ),
          ),

          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          //!Terms & Conditions checkbox
          const TTermsAndConditionCheckBox(),
          const SizedBox(
            height: TSizes.spaceBtwSections,
          ),

          //!SIgn UP button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(TTexts.createAccount),
            ),
          )
        ],
      ),
    );
  }
}
