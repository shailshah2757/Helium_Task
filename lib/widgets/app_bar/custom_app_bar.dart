import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/theme/theme_helper.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
    this.ending,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? ending;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 56.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 56.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Stack(
          children: [
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 51.42.v,
                bottom: 3.5800018.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray50059,
              ),
            ),
            Container(
              height: 1.v,
              width: double.maxFinite,
              margin: EdgeInsets.only(
                top: 51.42.v,
                bottom: 3.5800018.v,
              ),
              decoration: BoxDecoration(
                color: appTheme.gray50059,
              ),
            ),
          ],
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill,
}
