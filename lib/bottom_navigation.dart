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
            () => Container(
          color: darkMode ? Colors.black : EColors.white, // Entire bar background
          child: NavigationBar(
            height: 80,
            elevation: 0,
            selectedIndex: controller.selectedIndex.value,
            onDestinationSelected: (index) =>
            controller.selectedIndex.value = index,
            backgroundColor: darkMode ? Colors.black : EColors.white,
            indicatorColor: EColors.primary.withOpacity(0.2), // Stronger highlight color
            destinations: [
              NavigationDestination(
                icon: const Icon(Iconsax.home, color: Colors.grey),
                selectedIcon: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: EColors.primary, // Solid primary color background
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Iconsax.home5, color: Colors.white),
                ),
                label: 'Home',
              ),
              NavigationDestination(
                icon: const Icon(Iconsax.shop, color: Colors.grey),
                selectedIcon: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: EColors.primary,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Iconsax.shop5, color: Colors.white),
                ),
                label: 'Store',
              ),
              NavigationDestination(
                icon: const Icon(Iconsax.heart, color: Colors.grey),
                selectedIcon: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: EColors.primary,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Iconsax.heart5, color: Colors.white),
                ),
                label: 'Wishlist',
              ),
              NavigationDestination(
                icon: const Icon(Iconsax.user, color: Colors.grey),
                selectedIcon: Container(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  decoration: BoxDecoration(
                    color: EColors.primary,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child: const Icon(Iconsax.user, color: Colors.white),
                ),
                label: 'Profile',
              ),
            ],
          ),
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
