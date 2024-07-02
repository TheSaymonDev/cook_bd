import 'package:cook_bd/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BillDetailsRowWidget extends StatelessWidget {

  final String label;
  final String value;
  final bool isTotal;
  const BillDetailsRowWidget({super.key, required this.label, required this.value, this.isTotal=false});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: isTotal ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.bodySmall!.copyWith(color: greyClr)),
        Text(value, style: isTotal ? Theme.of(context).textTheme.titleLarge : Theme.of(context).textTheme.titleSmall),
      ],
    );
  }
}
