import 'package:flutter/material.dart';
import 'package:patakazi/components/my_button.dart';
import 'package:patakazi/features/authentication/screens/login/login.dart';
import 'package:patakazi/utils/constants/image_strings.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'PATAKAZI',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 47, 121, 17),
                  ),
                ),
                const SizedBox(height: 160.0),
                const Image(
                  height: 300,
                  width: 300,
                  image: AssetImage(TImages.loginImage),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  textAlign: TextAlign.center,
                  'CONNECTING EMPLOYERS WITH SERVICE PROVIDERS.WELCOME ABOARD',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 47, 121, 17),
                    letterSpacing: 1.5,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                MyButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  ),
                  text: "Continue as Customer",
                ),
                const SizedBox(
                  height: 10.0,
                ),
                MyButton(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginScreen(),
                    ),
                  ),
                  text: "Continue as Service Provider",
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
