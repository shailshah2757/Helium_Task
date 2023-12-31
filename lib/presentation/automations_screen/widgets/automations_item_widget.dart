import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AutomationsItemWidget extends StatelessWidget {
  final String name;
  final Color background;

  const AutomationsItemWidget({
    Key? key,
    required this.background,
    required this.name,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 20.v,
        right: 20.v,
        top: 30.h,
        bottom: 20.h,
      ),
      decoration: AppDecoration.fillBlue.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder9,
        color: background,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Container(
          //   width: 20.v,
          //   height: 20.v,
          //   margin: EdgeInsets.only(left: 10.h),
          //   child: ClipPath(
          //     clipper: SemiCircleClipper(),
          //     child: Container(
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
          Container(
            width: 188.h,
            margin: EdgeInsets.only(top: 1.v),
            child: Text(
              name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleMedium!.copyWith(
                height: 1.50,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 55.h,
              top: 9.v,
              bottom: 12.v,
            ),
            child: CustomIconButton(
              height: 23.adaptSize,
              width: 23.adaptSize,
              // padding: EdgeInsets.all(5.h),
              child: CustomImageView(
                imagePath: ImageConstant.addIcon,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SemiCircleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.arcToPoint(
      Offset(size.width / 2, size.height),
      radius: Radius.circular(size.width / 2),
      clockwise: true,
    );
    path.lineTo(size.width / 2, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
