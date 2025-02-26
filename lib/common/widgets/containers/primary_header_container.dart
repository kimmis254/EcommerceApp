import 'package:ecommerceapp/common/widgets/containers/circular_container.dart';
import 'package:ecommerceapp/common/widgets/curved_edges/curved_edge_widget.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EPrimaryHeaderContainer extends StatelessWidget {
  const EPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECurvedEdgeWidget(
      child: SizedBox(
        height: 400,
        child: Container(
          color: EColors.primary,
        child: Stack(
          children: [
            Positioned(
                top: -100,
                right: -200,
                child: ECircularContainer(
                    backgroundColor: EColors.textWhite.withOpacity(0.1))),
            Positioned(
                top: 100,
                right: -300,
                child: ECircularContainer(
                    backgroundColor: EColors.textWhite.withOpacity(0.1))),
            child,
          ],
        ),
      ),
      ),
    );
  }
}
