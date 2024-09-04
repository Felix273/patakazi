import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:patakazi/common/widgets/loaders/animation_loader.dart';
import 'package:patakazi/utils/constants/colors.dart';
import 'package:patakazi/utils/helpers/helper_functions.dart';

///A Utility class for managing a full Screen Loading Dialog

class TFullScreenLoader {
  //Open  a full-screen loading Dialogwith a given text and animation
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => PopScope(
        canPop: false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              TAnimationLoaderWidget(
                text: text,
                animation: animation,
              )
            ],
          ),
        ),
      ),
    );
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
