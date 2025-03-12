import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class EProductRatingIndicator extends StatelessWidget {
  const EProductRatingIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Text(text, style: Theme.of(context).textTheme.bodyMedium)),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: EDeviceUtils.getScreenWidth(context) * 0.5,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 11,
              backgroundColor: EColors.grey,
              valueColor: const AlwaysStoppedAnimation(EColors.primary),
              borderRadius: BorderRadius.circular(7),
            ),
          ),
        )
      ],
    );
  }
}
