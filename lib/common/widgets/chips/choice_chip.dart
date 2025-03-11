import 'package:ecommerceapp/common/widgets/containers/circular_container.dart';
import 'package:ecommerceapp/utils/constants/colors.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class EChoiceChip extends StatelessWidget {
  const EChoiceChip({
    super.key,
    required this.text,
    required this.selected,
    this.onSelected,
  });

  final String text;
  final bool selected;
  final void Function(bool)? onSelected;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
      child: ChoiceChip(
        label: EHelperFunctions.getColor(text) != null ? SizedBox() : Text(text),
        selected: selected,
        onSelected: onSelected,
        labelStyle: TextStyle(color: selected ? EColors.white : null),
        avatar: EHelperFunctions.getColor(text) != null
            ? ECircularContainer(
                width: 50,
                height: 50,
                backgroundColor: EHelperFunctions.getColor(text)!)
            : null,
        shape:
            EHelperFunctions.getColor(text) != null ? const CircleBorder() : null,
        labelPadding: EHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        padding: EHelperFunctions.getColor(text) != null
            ? const EdgeInsets.all(0)
            : null,
        backgroundColor: EHelperFunctions.getColor(text),
      ),
    );
  }
}
