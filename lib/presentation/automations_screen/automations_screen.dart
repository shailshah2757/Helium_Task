import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/app_bar/appbar_title.dart';
import 'package:tasks/widgets/app_bar/appbar_title_image.dart';
import 'package:tasks/widgets/app_bar/custom_app_bar.dart';
import 'package:tasks/widgets/custom_outlined_button.dart';

import 'package:tasks/presentation/automations_screen/widgets/automations_item_widget.dart';
import 'package:flutter/material.dart';

class AutomationsScreen extends StatelessWidget {
  const AutomationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 36.v),
            child: Column(
              children: [
                SizedBox(
                  width: 201.h,
                  child: Text(
                    "you don't have \nany active automation",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleMediumBlack90018
                        .copyWith(height: 1.50),
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 272.h,
                  child: Text(
                    "you can schedule all your smart devices\nwith your sleep and wake up pattern",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles
                        .bodyMediumPoppinsOnSecondaryContainer
                        .copyWith(height: 1.50),
                  ),
                ),
                SizedBox(height: 43.v),
                Divider(color: appTheme.gray300),
                SizedBox(height: 65.v),
                _buildSeventyFour(context),
                SizedBox(height: 10.v),
                _buildAutomations(context)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: 36.h, right: 132.h),
            child: Row(
              children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    margin: EdgeInsets.only(top: 15.v, bottom: 5.v),
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarTitle(
                  text: "Automations",
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 100.h, top: 10.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          SizedBox(
            height: 1.v,
            width: double.maxFinite,
            child: const Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: double.maxFinite,
                    // child: Divider(color: appTheme.gray300),
                  ),
                ),
              ],
            ),
          ),
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSeventyFour(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 29.h, right: 15.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 18.v,
                width: 20.h,
                // margin: EdgeInsets.only(top: 18.v),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 20.h, bottom: 9.v),
                  child: Text("AI Recommended",
                      style: CustomTextStyles.titleMediumBlack90018)),
              const Spacer(),
              CustomOutlinedButton(
                  height: 24.v,
                  width: 71.h,
                  text: "Add new ",
                  margin: EdgeInsets.only(top: 2.v, bottom: 10.v),
                  buttonStyle: CustomButtonStyles.outlineBlack,
                  buttonTextStyle: CustomTextStyles.labelMediumPoppins)
            ]));
  }

  /// Section Widget
  Widget _buildAutomations(BuildContext context) {
    List<Map<String, dynamic>> automationData = [
      {
        "name": "Remind me if the door is \nnot closed",
        "background": const Color(0xFFE6F3FF),
      },
      {
        "name": "Turn on the lights when \nI'm back",
        "background": const Color(0xFFFFD8DE),
      },
      {
        "name": "Turn off AC after 2 AM",
        "background": const Color(0xFFFFF6E9),
      },
      {
        "name": "Turn on windows light at \n7AM",
        "background": const Color(0xFFE6F3FF),
      },
      {
        "name": "Turn on windows light at \n7AM",
        "background": const Color(0xFFFFD8DE),
      },
    ];

    return Padding(
      padding: EdgeInsets.only(
        right: 9.h,
        left: 9.h,
      ),
      child: ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 10.v);
        },
        itemCount: automationData.length,
        itemBuilder: (context, index) {
          return AutomationsItemWidget(
            name: automationData[index]["name"],
            background: automationData[index]["background"],
          );
        },
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
