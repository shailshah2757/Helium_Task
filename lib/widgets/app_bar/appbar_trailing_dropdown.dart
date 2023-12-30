import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/custom_drop_down.dart';

// ignore: must_be_immutable
class AppbarTrailingDropDown extends StatelessWidget {
  AppbarTrailingDropDown({
    Key? key,
    required this.hintText,
    required this.items,
    this.margin,
    required this.onTap,
    this.padding,
  }) : super(key: key);

  String? hintText;

  List<String> items;

  Function(String) onTap;

  EdgeInsetsGeometry? margin;

  EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: CustomDropDown(
          width: 140.h,
          hintText: "Living Room",
          items: items,
          onChanged: (value) {
            onTap(value);
          }),
    );
  }
}
