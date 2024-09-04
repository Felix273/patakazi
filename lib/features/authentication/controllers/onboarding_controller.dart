import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:patakazi/features/authentication/screens/login/login.dart';

class onBoardingController extends GetxController {
  static onBoardingController get instance => Get.find();

  //variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  //update Current Index when page is scrolled
  void updatePageIndicator(index) => currentPageIndex = index;

  //jump to the specific dot selected page
  void dotNavigationClick(index) {}

  //update Current index &jump to the next page
  void nextPage() {
    if (currentPageIndex.value == 2) {
      final storage = GetStorage();

      if (kDebugMode) {
        print('============== GET STORAGE Next Button ==============');
        print(storage.read('IsFirstTime'));
      }

      storage.write('isFirstTime', false);

      if (kDebugMode) {
        print('============== GET STORAGE Next Button ==============');
        print(storage.read('IsFirstTime'));
      }

      Get.offAll(const LoginScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  //update Current Index & jump to the last page
  void skipPage() {
    currentPageIndex.value = 2;
    pageController.jumpToPage(2);
  }
}
