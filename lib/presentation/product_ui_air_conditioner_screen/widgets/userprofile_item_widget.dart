import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

class UserProfileItemWidget extends StatelessWidget {
  UserProfileItemWidget({
    Key? key,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 50.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50.adaptSize,
            width: 50.adaptSize,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 50.adaptSize,
                    width: 50.adaptSize,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(
                        25.h,
                      ),
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorPrimary,
                  height: 24.v,
                  width: 25.h,
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(
                    right: 11.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 7.v,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
            ),
            child: Text(
              "Cool",
              style: CustomTextStyles.labelLargeErrorContainer12,
            ),
          )
        ],
      ),
    );
  }
}
