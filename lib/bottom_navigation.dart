import 'package:ecommerceapp/features/shop/screens/home/home.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = EHelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar: Obx(
            () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? EColors.black : EColors.white,
          indicatorColor: darkMode ? EColors.white.withOpacity(0.1) : EColors.black.withOpacity(0.1),
          destinations: [
            NavigationDestination(
              icon: const Icon(Iconsax.home),
              selectedIcon: const Icon(Iconsax.home5, color: Colors.blue), // Filled icon when selected
              label: 'Home',
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.shop),
              selectedIcon: const Icon(Iconsax.shop5, color: Colors.blue), // Filled icon when selected
              label: 'Store',
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.heart),
              selectedIcon: const Icon(Iconsax.heart5, color: Colors.blue), // Filled icon when selected
              label: 'Wishlist',
            ),
            NavigationDestination(
              icon: const Icon(Iconsax.user),
              selectedIcon: const Icon(Iconsax.user5, color: Colors.blue), // Filled icon when selected
              label: 'Profile',
            ),
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
    const HomeScreen(),
    Container(color: Colors.orange),
    Container(color: Colors.blue),
    Container(color: Colors.yellow)
  ];
}
