import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/custom_icon_button.dart';
import 'package:tasks/widgets/custom_radio_button.dart';

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
                  SizedBox(
                    height: 290.adaptSize,
                    width: 290.adaptSize,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            top: 72.v,
                            right: 42.h,
                          ),
                          child: CustomIconButton(
                            height: 41.adaptSize,
                            width: 41.adaptSize,
                            alignment: Alignment.topCenter,
                            child: CustomImageView(),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: 50.h,
                              top: 64.v,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(top: 8.v, bottom: 9.v),
                                  child: CustomIconButton(
                                    height: 41.adaptSize,
                                    width: 41.adaptSize,
                                    padding: EdgeInsets.all(
                                      13.h,
                                    ),
                                    decoration:
                                        IconButtonStyleHelper.outlinePrimary,
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup4,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        _buildIntensiveSection(context),
                        Column(
                          children: [
                            Container(
                              width: 290.5,
                              height: 283,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 207.35,
                                    top: 71.50,
                                    child: Container(
                                      width: 41.06,
                                      height: 41.06,
                                      decoration: const ShapeDecoration(
                                        shape: OvalBorder(),
                                        color: Color(0xFFECEDEE),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 42.09,
                                    top: 71.50,
                                    child: Container(
                                      width: 41.06,
                                      height: 40.28,
                                      decoration: ShapeDecoration(
                                        shape: OvalBorder(
                                          side: BorderSide(
                                            width: 1.03,
                                            color:
                                                Colors.white.withOpacity(0.8),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 118.05,
                                    top: 36.25,
                                    child: SizedBox(
                                      width: 55,
                                      height: 14.72,
                                      child: Text(
                                        "intensive",
                                        style: CustomTextStyles
                                            .labelLargePrimaryContainer,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 200,
                                    top: 64,
                                    child: Transform(
                                      transform: Matrix4.identity()
                                        ..translate(0.0, 0.0)
                                        ..rotateZ(1.57),
                                      child: Container(
                                        width: 56,
                                        height: 110,
                                        decoration: ShapeDecoration(
                                          color: Color(0xFFECEDEE),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1.2,
                                              color: Colors.white
                                                  .withOpacity(0.08),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const Positioned(
                                    left: 118,
                                    top: 74,
                                    child: SizedBox(
                                      width: 60,
                                      height: 35,
                                      child: Text(
                                        "75%",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 30,
                                          fontFamily: "Inter",
                                          fontWeight: FontWeight.w400,
                                          height: 0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    right: 5,
                                    child: Container(
                                      width: 290.50,
                                      height: 280,
                                      decoration: const ShapeDecoration(
                                        shape: OvalBorder(),
                                        color: Color(0xFFECEDEE),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    right: 5,
                                    child: Container(
                                      width: 290.50,
                                      height: 80,
                                      decoration: const ShapeDecoration(
                                        shape: OvalBorder(),
                                        gradient: LinearGradient(
                                          begin: Alignment(-0.76, -0.65),
                                          end: Alignment(0.76, 0.65),
                                          colors: [
                                            Color(0xFF38B6FF),
                                            Color(0x3A65B7EA),
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        // Align(
                        //   alignment: Alignment.center,
                        //   child: SizedBox(
                        //     height: 290.adaptSize,
                        //     width: 290.adaptSize,
                        //     child: CircularProgressIndicator(
                        //       strokeWidth: 10,
                        //       value: 0.5,
                        //       color: theme.colorScheme.onError,
                        //     ),
                        //   ),
                        // ),
                        // CustomImageView(
                        //   imagePath: ImageConstant.imgPlusBlack900,
                        //   height: 12.adaptSize,
                        //   width: 12.adaptSize,
                        //   alignment: Alignment.topRight,
                        //   margin: EdgeInsets.only(
                        //     top: 87.v,
                        //     right: 56.h,
                        //   ),
                        // )
                      ],
                    ),
                  )
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
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: EdgeInsets.only(
          top: 20.v,
          right: 33.h,
        ),
        child: CustomRadioButton(
          text: "intensive",
          value: "intensive",
          groupValue: radioGroup,
          onChange: (value) {
            radioGroup = value;
          },
        ),
      ),
    );
  }
}
