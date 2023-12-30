import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

class DeviceItemWidget extends StatelessWidget {
  final List<String> descriptions;
  final List<String> circleImages;
  final int index;
  final double imageSize;
  final String text;
  final String status;

  const DeviceItemWidget({
    Key? key,
    required this.circleImages,
    required this.index,
    required this.imageSize,
    required this.text,
    required this.status,
    required this.descriptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPinkCircle = index == 1 || index == 2;
    String statusText = isPinkCircle ? "ON" : "OFF";
    Color textColor = isPinkCircle ? Color(0xFFF77695) : Colors.black;

    return Container(
      height: 150.v,
      width: 160.h,
      decoration: BoxDecoration(
        color: theme.colorScheme.onError,
        borderRadius: BorderRadius.circular(
          18.h,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 35.v,
            left: 15.h,
            child: Text(
              statusText,
              style: TextStyle(
                color: textColor,
                fontSize: 16,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          if (index == 2)
            Positioned(
              bottom: 50.v,
              left: 15.h,
              child: CustomImageView(
                imagePath: ImageConstant.temperatureBar,
              ),
            ),
          Positioned(
            bottom: 30.v,
            left: 15.h,
            child: Text(
              text,
              style: CustomTextStyles.titleSmall14,
            ),
          ),
          Positioned(
            bottom: 15.v,
            left: 15.h,
            child: Text(
              descriptions[index],
              style: TextStyle(
                color: isPinkCircle ? Color(0xFFF77695) : Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Positioned(
              top: 20.v,
              right: 20.h,
              child: Container(
                width: 45.h,
                height: 45.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: isPinkCircle ? Color(0xFFEC7591) : Colors.grey,
                    width: 2.0,
                  ),
                  color: isPinkCircle ? Color(0xFFF77695) : null,
                ),
                padding: EdgeInsets.all(8),
                child: CustomImageView(
                  imagePath: circleImages[index],
                  height: imageSize,
                  width: imageSize,
                ),
              ))
        ],
      ),
    );
  }
}
