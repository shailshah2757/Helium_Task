import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductUiOutdoorBulbScreen extends StatelessWidget {
  ProductUiOutdoorBulbScreen({Key? key})
      : super(
          key: key,
        );

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: 403.h,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 35.h,
                right: 20.h,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 509.v,
                    width: 360.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: 34.adaptSize,
                            width: 34.adaptSize,
                            margin: EdgeInsets.only(
                              top: 38.v,
                              right: 3.h,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onError,
                              borderRadius: BorderRadius.circular(
                                6.h,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgImage4,
                          height: 504.v,
                          width: 305.h,
                          alignment: Alignment.center,
                        ),
                        _buildSmartLightSection(context),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19.v,
                  ),
                  _buildModeSection(context),
                  SizedBox(
                    height: 66.v,
                  ),
                  // SizedBox(
                  //   height: 290.adaptSize,
                  //   width: 290.adaptSize,
                  //   child: Stack(
                  //     alignment: Alignment.topLeft,
                  //     children: [
                  //       Padding(
                  //         padding: EdgeInsets.only(
                  //           top: 72.v,
                  //           right: 42.h,
                  //         ),
                  //         child: CustomIconButton(
                  //           height: 41.adaptSize,
                  //           width: 41.adaptSize,
                  //           alignment: Alignment.topCenter,
                  //           child: CustomImageView(),
                  //         ),
                  //       ),
                  //       Align(
                  //         alignment: Alignment.center,
                  //         child: Padding(
                  //           padding: EdgeInsets.only(
                  //             left: 50.h,
                  //             top: 64.v,
                  //           ),
                  //         ),
                  //       ),
                  //       _buildIntensiveSection(context),
                  //     ],
                  //   ),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSmartLightSection(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(top: 439.v),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                bottom: 12.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Smart Light",
                    style: CustomTextStyles.titleMediumBlack900,
                  ),
                  Text(
                    "Connected",
                    style: CustomTextStyles.labelLargeGray60001,
                  ),
                ],
              ),
            ),
            Container(
              height: 70.adaptSize,
              width: 70.adaptSize,
              decoration: BoxDecoration(
                  color: theme.colorScheme.errorContainer,
                  borderRadius: BorderRadius.circular(
                    35.h,
                  ),
                  border: Border.all(
                    color: appTheme.pink30001,
                    width: 3.h,
                  )),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildModeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mode",
          style: theme.textTheme.titleSmall,
        ),
        SizedBox(
          height: 14.v,
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              left: 49.h,
              right: 52.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildColorSection(
                  context,
                  imagePath: ImageConstant.warm,
                  description: "Warm",
                  backgroundColor: const Color(
                    0xFFF77695,
                  ),
                  textColor: const Color(0xFFF77695),
                  imagePadding: const EdgeInsets.all(10),
                ),
                const Spacer(
                  flex: 53,
                ),
                _buildColorSection(
                  context,
                  imagePath: ImageConstant.color,
                  description: "Color",
                  backgroundColor: const Color(
                    0xFFECEDEE,
                  ),
                  textColor: const Color(0xFF696765),
                  imagePadding: const EdgeInsets.all(10),
                ),
                const Spacer(
                  flex: 53,
                ),
                _buildColorSection(
                  context,
                  backgroundColor: const Color(
                    0xFFECEDEE,
                  ),
                  description: "Romantic",
                  textColor: const Color(0xFF696765),
                  imagePadding: const EdgeInsets.all(10),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildColorSection(
    BuildContext context, {
    String? imagePath,
    required String description,
    required Color backgroundColor,
    required Color textColor,
    required EdgeInsetsGeometry imagePadding,
  }) {
    return Column(
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(
              25.h,
            ),
          ),
          child: Padding(
            padding: imagePadding,
            child: CustomImageView(
              imagePath: imagePath,
            ),
          ),
        ),
        SizedBox(
          height: 7.v,
        ),
        Text(
          description,
          style: CustomTextStyles.labelLargePrimaryContainer.copyWith(
            color: textColor,
          ),
        )
      ],
    );
  }

  Widget _buildIntensiveSection(BuildContext context) {
    return Row();
  }
}
