import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/app_bar/appbar_leading_image.dart';
import 'package:tasks/widgets/app_bar/appbar_subtitle.dart';
import 'package:tasks/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:tasks/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:tasks/widgets/app_bar/custom_app_bar.dart';
import 'package:tasks/widgets/custom_icon_button.dart';

class ProductUiAirConditionerScreen extends StatelessWidget {
  ProductUiAirConditionerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: 432.h,
          padding: EdgeInsets.symmetric(
            vertical: 26.v,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 50.v,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 10.h,
                    right: 10.h,
                    bottom: 5.v,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                          left: 45.h,
                          right: 45.h,
                        ),
                        padding: EdgeInsets.all(
                          12.h,
                        ),
                        decoration: AppDecoration.fillTealB.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder144,
                        ),
                        child: Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: appTheme.blue20059,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder131,
                          ),
                          child: Container(
                            height: 250.adaptSize,
                            width: 250.adaptSize,
                            padding: EdgeInsets.symmetric(
                              horizontal: 7.v,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillBlue20059.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder131,
                            ),
                            child: Stack(
                              alignment: Alignment.centerRight,
                              children: [
                                Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                    height: 200.adaptSize,
                                    width: 200.adaptSize,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 20.v,
                                      value: 0.25,
                                      backgroundColor: appTheme.lightBlueA200
                                          .withOpacity(0.25),
                                      color: appTheme.lightBlueA200,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    height: 35.adaptSize,
                                    width: 35.adaptSize,
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(
                                        20.h,
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: theme
                                              .colorScheme.secondaryContainer
                                              .withOpacity(0.5),
                                          spreadRadius: 2.h,
                                          blurRadius: 2.h,
                                          offset: const Offset(0, 0),
                                        )
                                      ],
                                    ),
                                    child: Container(
                                      margin: const EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          color: const Color(0xFF38B6FF),
                                          borderRadius: BorderRadius.circular(
                                            20.h,
                                          ),
                                          boxShadow: [
                                            BoxShadow(
                                              color: theme.colorScheme
                                                  .secondaryContainer
                                                  .withOpacity(0.4),
                                              spreadRadius: 1.h,
                                              blurRadius: 1.h,
                                              offset: const Offset(0, 0),
                                            )
                                          ]),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      left: 93.h,
                                      right: 90.h,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "23",
                                              style:
                                                  theme.textTheme.displayMedium,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                top: 2.v,
                                                bottom: 20.v,
                                              ),
                                              child: Text(
                                                "O",
                                                style: CustomTextStyles
                                                    .titleMediumBlack900,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Celcius",
                                          style: theme.textTheme.bodyLarge,
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 38.v,
                      ),
                      _buildSamsungACRow(context),
                      SizedBox(
                        height: 16.v,
                      ),
                      _buildSeventyOneColumn(context),
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
        bottomNavigationBar: _buildSeventyThreeColumn(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 35.h,
          top: 23.v,
          bottom: 16.v,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      centerTitle: true,
      title: Column(
        children: [
          SizedBox(
            height: 5.v,
          ),
          AppbarSubtitle(text: "Air Conditioner"),
          SizedBox(
            height: 1.v,
          ),
          AppbarSubtitleOne(
            text: "Living Room",
            margin: EdgeInsets.only(
              left: 23.h,
              right: 28.h,
            ),
          )
        ],
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgCalendar,
          margin: EdgeInsets.only(
            left: 24.h,
            top: 5.v,
            right: 24.h,
          ),
        )
      ],
    );
  }

  Widget _buildSamsungACRow(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 15.v,
              bottom: 16.v,
              left: 20.h,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Samsung AC",
                  style: CustomTextStyles.titleMediumBlack900,
                ),
                Text(
                  "Connected",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 70.adaptSize,
            width: 70.adaptSize,
            padding: EdgeInsets.all(
              15.h,
            ),
            decoration: IconButtonStyleHelper.outlinePinkTL35,
            child: CustomImageView(
              imagePath: ImageConstant.imgThumbsUpPrimary,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSeventyOneColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Mode",
            style: theme.textTheme.titleSmall,
          ),
        ),
        SizedBox(
          height: 17.v,
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.only(
              left: 26.h,
              right: 29.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildCircleItem(
                  imagePath: ImageConstant.cool,
                  description: "Cool",
                  backgroundColor: Color(0xFFF77695),
                  textColor: Color(0xFFF77695),
                ),
                _buildCircleItem(
                  imagePath: ImageConstant.air,
                  description: "Air",
                  backgroundColor: Color(0xFFECEDEE),
                  textColor: Color(0xFF848383),
                ),
                _buildCircleItem(
                  imagePath: ImageConstant.hot,
                  description: "Hot",
                  backgroundColor: Color(0xFFECEDEE),
                  textColor: Color(0xFF848383),
                ),
                _buildCircleItem(
                  imagePath: ImageConstant.eco,
                  description: "Eco",
                  backgroundColor: Color(0xFFECEDEE),
                  textColor: Color(0xFF848383),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buildCircleItem({
    required String imagePath,
    required String description,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Column(
      children: [
        SizedBox(
          width: 50.h,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.circular(
                      25.h,
                    ),
                  ),
                ),
              ),
              CustomImageView(
                imagePath: imagePath,
                height: 24.v,
                width: 25.h,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(
                  right: 11.h,
                ),
              )
            ],
          ),
        ),
        SizedBox(
          height: 7.v,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(left: 0.h),
            child: Text(
              description,
              style: CustomTextStyles.labelLargeErrorContainer12.copyWith(
                color: textColor,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildSeventyThreeColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 35.v,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "Timer",
              style: theme.textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 5.h, top: 12.v),
            child: Row(
              children: [
                SizedBox(
                  height: 79.v,
                  width: 70.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 79.v,
                          width: 70.h,
                          decoration: BoxDecoration(
                            color: appTheme.lightBlueA200,
                            borderRadius: BorderRadius.circular(
                              10.h,
                            ),
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgWpfTimer,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                        alignment: Alignment.center,
                      )
                    ],
                  ),
                ),
                Container(
                  height: 79.v,
                  width: 250.h,
                  margin: EdgeInsets.only(
                    left: 19.h,
                  ),
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 30.h,
                            vertical: 8.v,
                          ),
                          decoration: AppDecoration.fillOnError.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder9,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                width: 231.h,
                                margin: EdgeInsets.only(
                                  top: 11.v,
                                ),
                                decoration:
                                    AppDecoration.fillLightBlueA.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder9,
                                ),
                                child: Container(
                                  height: 18.v,
                                  width: 173.h,
                                  decoration: BoxDecoration(
                                    color: appTheme.lightBlueA200,
                                    borderRadius: BorderRadius.circular(
                                      9.h,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 16.v),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "2H",
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                    Text(
                                      "4H",
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                    Text(
                                      "6H",
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                    Text(
                                      "8H",
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                    Text(
                                      "10H",
                                      style:
                                          CustomTextStyles.labelLargeBlack900,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(
                            top: 16.v,
                            right: 86.h,
                          ),
                          padding: EdgeInsets.all(
                            8.h,
                          ),
                          decoration:
                              AppDecoration.outlineSecondaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.circleBorder12,
                          ),
                          child: Container(
                            height: 7.adaptSize,
                            width: 7.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.lightBlueA200,
                                borderRadius: BorderRadius.circular(
                                  3.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: theme.colorScheme.secondaryContainer.withOpacity(0.5),
                                    spreadRadius: 1.h,
                                    blurRadius: 1.h,
                                    offset: const Offset(0, 0),
                                  ),
                                ]),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
