import 'package:flutter/material.dart';
import 'package:tasks/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:tasks/presentation/device_screen/device_screen.dart';
import 'package:tasks/presentation/login_screen/login_screen.dart';
import 'package:tasks/presentation/automations_screen/automations_screen.dart';
import 'package:tasks/presentation/product_ui_air_conditioner_screen/product_ui_air_conditioner_screen.dart';
import 'package:tasks/presentation/product_ui_outdoor_bulb_screen/product_ui_outdoor_bulb_screen.dart';
import 'package:tasks/presentation/product_ui_speaker_screen/product_ui_speaker_screen.dart';

class AppRoutes {
  static const String loginScreen = '/login_screen';

  static const String automationsScreen = '/automations_screen';

  static const String deviceScreen = '/device_screen';

  static const String productUiAirConditionerScreen =
      '/product_ui_air_conditioner_screen';

  static const String productUiSpeakerScreen = '/product_ui_speaker_screen';

  static const String productUiOutdoorBulbScreen =
      '/product_ui_outdoor_bulb_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    automationsScreen: (context) => const AutomationsScreen(),
    deviceScreen: (context) => DeviceScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    productUiAirConditionerScreen: (context) => ProductUiAirConditionerScreen(),
    productUiOutdoorBulbScreen: (context) => ProductUiOutdoorBulbScreen(),
    productUiSpeakerScreen: (context) => ProductUiSpeakerScreen()
  };
}
