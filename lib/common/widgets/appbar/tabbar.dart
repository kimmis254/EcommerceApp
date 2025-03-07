import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = EHelperFunctions.isDarkMode(context);

    return Container(
      color: EColors.black, // Ensures background is fully black
      child: Material(
        color: Colors.transparent, // Prevents Material from overriding background
        child: Container(
          decoration: BoxDecoration(
            color: EColors.black, // Explicitly sets background color
          ),
          child: TabBar(
            tabs: tabs,
            isScrollable: true,
            indicator: BoxDecoration(), // Fully removes the indicator
            indicatorColor: Colors.transparent, // Just in case
            indicatorSize: TabBarIndicatorSize.label, // Prevents residual effects
            labelColor: EColors.white,
            unselectedLabelColor: EColors.darkGrey,

          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(EDeviceUtils.getAppBarHeight());
}
