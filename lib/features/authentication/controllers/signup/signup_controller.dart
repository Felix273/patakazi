import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:patakazi/data/services/network_manager.dart';
import 'package:patakazi/utils/constants/image_strings.dart';
import 'package:patakazi/utils/poppups/full_screen.dart';
import 'package:patakazi/utils/poppups/loaders.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  ///Variables
  final email = TextEditingController();
  final lastName = TextEditingController();
  final userName = TextEditingController();
  final password = TextEditingController();
  final firstName = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  ///SignUp
  Future<void> signup() async {
    try {
      //Start Loading
      TFullScreenLoader.openLoadingDialog(
          'We are processing your information', TImages.darkAppLogo);

      //Check intrernet Connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      //Form Validation
      if (!signupFormKey.currentState!.validate()) return;

      //Privacy Policy Check

      //Register user in the Firestore Authentication & Save user data in the Firestore

      //Save Authentication user data in the firestore

      //Show Success Message

      //Move to verify Email Screen
    } catch (e) {
      //Show some generic Error to the User
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      //Remove Loader
      TFullScreenLoader.stopLoading();
    }
  }
}
