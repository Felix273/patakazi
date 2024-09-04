import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:patakazi/app.dart';
import 'package:patakazi/data/repositories/authentication/authentication_repository.dart';
import 'package:patakazi/firebase_options.dart';

Future<void> main() async {
  //! widget Binding
  final WidgetsBinding widgetsBinding =
      WidgetsFlutterBinding.ensureInitialized();

  //! Getx local storage
  await GetStorage.init();

  //!Await Native Splash un other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //!initialize Firebase and authentication
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  //!Load all the material Design / Themes /Localization /Bindings
  runApp(const MyApp());
}
