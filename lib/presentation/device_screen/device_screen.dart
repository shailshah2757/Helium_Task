import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/presentation/device_screen/widgets/device_item_widget.dart';
import 'package:tasks/widgets/app_bar/appbar_leading_image.dart';
import 'package:tasks/widgets/app_bar/appbar_trailing_dropdown.dart';
import 'package:tasks/widgets/app_bar/custom_app_bar.dart';

// ignore: must_be_immutable
class DeviceScreen extends StatelessWidget {
  DeviceScreen({Key? key}) : super(key: key);

  List<String> dropDownItemList = ["Item one", "Item two", "Item three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Padding(
          padding: EdgeInsets.only(left: 25.h, top: 23.v, right: 28.h),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 151.v,
              mainAxisSpacing: 20.h,
              crossAxisSpacing: 20.h,
            ),
            // physics: NeverScrollableScrollPhysics(),
            itemCount: 8,
            itemBuilder: (context, index) {
              List<String> circleImages = getCircleImages();
              List<String> itemTexts = getItemTexts();
              List<String> descriptions = [
                "94%",
                "45%",
                "22*C",
                "30%",
                "25%",
                "20%",
                "15%",
                "10%",
              ];

              String commonText = "OFF";
              if (index == 1 || index == 2) {
                commonText = "ON";
              }

              return DeviceItemWidget(
                circleImages: circleImages,
                index: index,
                imageSize: 10.h,
                text: itemTexts[index],
                status: commonText,
                descriptions: descriptions,
              );
            },
          ),
        ),
      ),
    );
  }

  List<String> getCircleImages() {
    return [
      ImageConstant.light,
      ImageConstant.speakerWhite,
      ImageConstant.airConditionerWhite,
      ImageConstant.tvIcon,
      ImageConstant.smartWatch,
      ImageConstant.ovenIcon,
      ImageConstant.smartLock,
      ImageConstant.menuIcon,
    ];
  }

  List<String> getItemTexts() {
    return [
      "Outdoor Bulb",
      "Speaker",
      "Air Conditioner",
      "Living TV",
      "Watch",
      "Refrigerators",
      "Smart Lock",
      "Thermostats"
    ];
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 45.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin: EdgeInsets.only(
          left: 35.h,
          top: 25.v,
          bottom: 10.v,
        ),
        onTap: () {
          onTapArrowLeft(context);
        },
      ),
      actions: [
        AppbarTrailingDropDown(
            padding: EdgeInsets.only(
              top: 15.v,
              right: 30.h,
            ),
            margin: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 8.v,
            ),
            hintText: "Living Room",
            items: dropDownItemList,
            onTap: (value) {})
      ],
    );
  }

  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
