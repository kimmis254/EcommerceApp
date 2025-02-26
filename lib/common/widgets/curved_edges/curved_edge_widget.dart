import 'package:ecommerceapp/common/widgets/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';


class ECurvedEdgeWidget extends StatelessWidget {
  const ECurvedEdgeWidget({
    super.key, required this.child
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: ECustomCurvedEdges(),
        child: child
    );
  }
}