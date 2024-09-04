import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:patakazi/features/authentication/screens/login/login.dart';
import 'package:patakazi/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  //!Variables
  final deviceStorage = GetStorage();

  //!Called from main.dart on app launch

  @override
  void onReady() {
    //Remove the native Screen
    FlutterNativeSplash.remove();
    //Redirect the appropriate Screen
    screenRedirect();
  }

  //!Function to show Relevant Screen
  screenRedirect() async {
    //Local Storage
    deviceStorage.writeIfNull('isFirstTime', true);
    deviceStorage.read('isFirstTime') != true
        ? Get.offAll(() => const LoginScreen())
        : Get.offAll(const OnBoardingScreen());
  }

  /*-----------------------Email and Password Sign-in --------------- */
  ///[Email Authentication ] -Signin
  ///[Email Authentication ] - Register
  ///[ReAuthentication] - ReAuthenticate User
  ///[Email Verification] - mail varification
  ///[Email Authentication] -Forget Password

  /*----------------------- Federated identity & social sign-in --------------- */

  ///[GoogleAuthentication] - GOOOGLE
  ///[FacebookAuthentication] -Facebook

  /*----------------------- ./end  Federated identity & Social Sign-in --------------- */

  ///[LogOutUser]- valid for any authentication.
  ///DELETE USER - Remove user Auth and FireStore
}
