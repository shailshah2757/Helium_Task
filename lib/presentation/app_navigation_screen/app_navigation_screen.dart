import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Login",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.loginScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Automations",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.automationsScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Device",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.deviceScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Air Conditioner",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.productUiAirConditionerScreen,
                          ),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Outdoor Bulb",
                          onTapScreenTitle: () => onTapScreenTitle(
                            context,
                            AppRoutes.productUiOutdoorBulbScreen,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppNavigation(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20.v,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
              ),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: CustomTextStyles.titleLargePoppins,
              ),
            ),
          ),
          SizedBox(
            height: 10.v,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Check the App's UI",
              style: CustomTextStyles.titleSmall14,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 20.v,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 15.h),
              width: screenWidth,
              child: Divider(
                height: 1.v,
                thickness: 1.v,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20.v,
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20.fSize,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.v,
            ),
            SizedBox(
              height: 5.v,
            ),
            Center(
              child: Container(
                margin: EdgeInsets.only(left: 15.h),
                width: screenWidth,
                child: Divider(
                  color: Colors.grey,
                  height: 1.v,
                  thickness: 1.v,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
