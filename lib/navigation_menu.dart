import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:patakazi/pages/homepage.dart';
import 'package:get/get.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(icon: Icon(Iconsax.message), label: 'Chat'),
            NavigationDestination(
                icon: Icon(Iconsax.message_2), label: 'Requests'),
            NavigationDestination(
                icon: Icon(Iconsax.setting), label: 'Settings'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;
  final screens = [
    HomePage(),
    Container(
      color: Colors.purple,
    ),
    Container(
      color: Colors.orange,
    ),
    Container(
      color: Colors.blue,
    ),
  ];
}
