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
            () => Stack(
          children: [
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  color: darkMode ? Colors.black : EColors.white, // Make sure the background is transparent
                  boxShadow: [
                    if (!darkMode) // Only show shadow in light mode
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        spreadRadius: 2,
                      ),
                  ],
                ),
              ),
            ),
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
              child: NavigationBar(
                height: 80,
                elevation: 0,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) =>
                controller.selectedIndex.value = index,
                backgroundColor: Colors.transparent, // Fully transparent
                indicatorColor: EColors.primary.withOpacity(0.2), // Highlight effect
                destinations: [
                  NavigationDestination(
                    icon: const Icon(Iconsax.home, color: Colors.grey),
                    selectedIcon: _buildSelectedIcon(Iconsax.home5),
                    label: 'Home',
                  ),
                  NavigationDestination(
                    icon: const Icon(Iconsax.shop, color: Colors.grey),
                    selectedIcon: _buildSelectedIcon(Iconsax.shop5),
                    label: 'Store',
                  ),
                  NavigationDestination(
                    icon: const Icon(Iconsax.heart, color: Colors.grey),
                    selectedIcon: _buildSelectedIcon(Iconsax.heart5),
                    label: 'Wishlist',
                  ),
                  NavigationDestination(
                    icon: const Icon(Iconsax.user, color: Colors.grey),
                    selectedIcon: _buildSelectedIcon(Iconsax.user),
                    label: 'Profile',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }

  Widget _buildSelectedIcon(IconData icon) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: EColors.primary,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Icon(icon, color: Colors.white),
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
