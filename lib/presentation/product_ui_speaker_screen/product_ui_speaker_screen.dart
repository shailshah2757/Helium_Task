import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/app_bar/appbar_leading_image.dart';
import 'package:tasks/widgets/app_bar/appbar_subtitle.dart';
import 'package:tasks/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:tasks/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:tasks/widgets/app_bar/custom_app_bar.dart';
import 'package:tasks/widgets/custom_icon_button.dart';

class ProductUiSpeakerScreen extends StatelessWidget {
  ProductUiSpeakerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 854.v,
          width: 432.h,
          padding: EdgeInsets.symmetric(vertical: 36.v),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    right: 35.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 40.v,
                      ),
                      SizedBox(
                        height: 252.v,
                        width: 11.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.topCenter,
                              child: Text(
                                "+",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "-",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 214.v,
                                width: 4.v,
                                margin: EdgeInsets.only(
                                  left: 3.h,
                                ),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: 214.v,
                                        child: VerticalDivider(
                                          width: 4.h,
                                          thickness: 4.h,
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        height: 168.v,
                                        child: VerticalDivider(
                                          width: 4.v,
                                          thickness: 4.v,
                                          color: appTheme.lightBlueA200,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                margin: EdgeInsets.only(
                                  top: 61.v,
                                ),
                                padding: EdgeInsets.all(3.h),
                                decoration:
                                    AppDecoration.outlinePrimary.copyWith(
                                  borderRadius: BorderRadiusStyle.circleBorder6,
                                ),
                                child: Container(
                                  height: 3.adaptSize,
                                  width: 3.adaptSize,
                                  decoration: BoxDecoration(
                                    color: appTheme.lightBlueA200,
                                    borderRadius: BorderRadius.circular(
                                      1.h,
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: appTheme.gray900,
                                        spreadRadius: 1.h,
                                        blurRadius: 1.h,
                                        offset: const Offset(0, 0),
                                      ),
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
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      height: 363.v,
                      width: 185.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  EdgeInsets.only(left: 41.h, bottom: 41.v),
                              child: Text(
                                "98%",
                                style: theme.textTheme.titleSmall,
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 363.v,
                              width: 185.v,
                              child: Stack(
                                alignment: Alignment.bottomLeft,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgClipPathGroup,
                                    height: 363.v,
                                    width: 185.h,
                                    alignment: Alignment.center,
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgAirplane,
                                    height: 13.v,
                                    width: 9.h,
                                    alignment: Alignment.bottomLeft,
                                    margin: EdgeInsets.only(
                                      left: 30.h,
                                      bottom: 43.v,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 9.v,
                    ),
                    SizedBox(
                      height: 41.v,
                      width: 129.h,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Text(
                              "Connected",
                              style: CustomTextStyles.labelLargeGray60001,
                            ),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Smart Speaker",
                              style: CustomTextStyles.titleLargePoppins,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 25.v,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Container(
                        child: Text(
                          "Mode",
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              _buildProductUiSpeaker(context),
              Padding(
                padding: EdgeInsets.only(right: 21.h, bottom: 270.v),
                child: CustomIconButton(
                  height: 70.adaptSize,
                  width: 70.adaptSize,
                  padding: EdgeInsets.all(17.h),
                  decoration: IconButtonStyleHelper.outlinePinkTL35,
                  alignment: Alignment.bottomRight,
                  child: CustomImageView(
                    imagePath: ImageConstant.speakerWhite,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 70.v, right: 74.v),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: Text(
                            "85%",
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          "Volume",
                          style: CustomTextStyles.labelLargeGray60001,
                        ),
                      ),
                      SizedBox(
                        height: 102.v,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 200.h),
                        child: Text(
                          "Alexa Eco Dot",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 225.h),
                        child: Text(
                          "Speaker",
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
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
          AppbarSubtitle(text: "Speaker"),
          SizedBox(
            height: 1.v,
          ),
          AppbarSubtitleOne(
            text: "Living Room",
            margin: EdgeInsets.only(
              left: 28.h,
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

  Widget _buildProductUiSpeaker(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 26.h,
          right: 30.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.h),
                        color: const Color(0xFFF77695)),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgBluetooth,
                    ),
                  ),
                  CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.h),
                      color: Color(0xFFECEDEE),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVaadinMute,
                    ),
                  ),
                  CustomIconButton(
                    height: 45.adaptSize,
                    width: 45.adaptSize,
                    padding: EdgeInsets.all(14.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25.h),
                      color: Color(0xFFECEDEE),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.wifi,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 6.v,
            ),
            Padding(
              padding: EdgeInsets.only(left: 57.h, right: 60.h),
              child: Row(
                children: [
                  Text(
                    "Bluetooth",
                    style: CustomTextStyles.labelLargeErrorContainer,
                  ),
                  const Spacer(
                    flex: 45,
                  ),
                  Text(
                    "Mute",
                    style: CustomTextStyles.labelLargeGray60001,
                  ),
                  const Spacer(
                    flex: 54,
                  ),
                  Text(
                    "Wi-Fi",
                    style: CustomTextStyles.labelLargeGray60001,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 26.v,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 1.h,
              ),
              child: Text(
                "Music",
                style: theme.textTheme.titleSmall,
              ),
            ),
            SizedBox(
              height: 23.v,
            ),
            Padding(
              padding: EdgeInsets.only(left: 1.h),
              child: Text(
                "The Song",
                style: theme.textTheme.labelLarge,
              ),
            ),
            SizedBox(
              height: 13.v,
            ),
            SizedBox(
              height: 12.v,
              width: 375.h,
              child: Stack(
                alignment: Alignment.centerLeft,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 7.v,
                      width: 375.h,
                      decoration: BoxDecoration(
                        color: appTheme.lightBlueA200.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(2.h),
                        child: LinearProgressIndicator(
                          value: 0.41,
                          backgroundColor:
                              appTheme.lightBlueA200.withOpacity(0.3),
                          valueColor: AlwaysStoppedAnimation<Color>(
                            appTheme.lightBlueA200,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 135.h),
                      padding: EdgeInsets.all(4.h),
                      decoration: AppDecoration.outlinePrimary.copyWith(
                        borderRadius: BorderRadiusStyle.circleBorder6,
                      ),
                      child: Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        decoration: BoxDecoration(
                          color: appTheme.lightBlueA200,
                          borderRadius: BorderRadius.circular(1.h),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.gray900,
                              spreadRadius: 1.h,
                              blurRadius: 1.h,
                              offset: const Offset(0, 0),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 3.v,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 30.v),
                  child: Text(
                    "1.25",
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.rewind,
                  height: 13.v,
                  width: 15.h,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    top: 25.v,
                    bottom: 8.v,
                  ),
                ),
                const Spacer(
                  flex: 24,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgRefresh,
                  height: 10.v,
                  width: 14.h,
                  margin: EdgeInsets.only(top: 27.v, bottom: 9.v),
                ),
                const Spacer(
                  flex: 25,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVectorLightBlueA200,
                  height: 25.adaptSize,
                  width: 35.adaptSize,
                  margin: EdgeInsets.only(top: 15.v),
                ),
                const Spacer(
                  flex: 23,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgForward,
                  height: 10.v,
                  width: 14.v,
                  margin: EdgeInsets.only(top: 27.v, bottom: 9.v),
                ),
                const Spacer(
                  flex: 26,
                ),
                CustomImageView(
                  imagePath: ImageConstant.forward,
                  height: 13.v,
                  width: 15.h,
                  margin: EdgeInsets.only(top: 25.v, bottom: 8.v, right: 5.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h, bottom: 30.v),
                  child: Text(
                    "4.15",
                    style: theme.textTheme.labelLarge,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
