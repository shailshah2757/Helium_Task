import 'package:flutter/material.dart';
import 'package:tasks/core/app_export.dart';
import 'package:tasks/widgets/app_bar/appbar_leading_image.dart';
import 'package:tasks/widgets/app_bar/custom_app_bar.dart';
import 'package:tasks/widgets/custom_elevated_button.dart';
import 'package:tasks/widgets/custom_outlined_button.dart';
import 'package:tasks/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 32.v),
            child: Padding(
              padding: EdgeInsets.only(
                left: 33.h,
                right: 33.h,
                bottom: 5.v,
              ),
              child: Column(
                children: [
                  Text(
                    "Hello Again!",
                    style: theme.textTheme.headlineSmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "Welcome back",
                    style: theme.textTheme.bodyLarge,
                  ),
                  SizedBox(height: 47.v),
                  _buildEmail(context),
                  SizedBox(height: 16.v),
                  _buildPassword(context),
                  SizedBox(height: 17.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Forgot Password?",
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  SizedBox(height: 22.v),
                  _buildSignIn(context),
                  SizedBox(height: 23.v),
                  _buildOr(context),
                  SizedBox(height: 24.v),
                  _buildSignInWithGoogle(context),
                  SizedBox(height: 12.v),
                  _buildSignInWithApple(context),
                  SizedBox(height: 168.v),
                  Container(
                    width: 282.h,
                    margin: EdgeInsets.symmetric(horizontal: 22.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By sign in, I accept the ",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "Terms of Service",
                            style: theme.textTheme.labelMedium,
                          ),
                          TextSpan(
                            text: " and ",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "Community Guidelines",
                            style: theme.textTheme.labelMedium,
                          ),
                          TextSpan(
                            text: " and have read ",
                            style: theme.textTheme.bodySmall,
                          ),
                          TextSpan(
                            text: "Privacy Policy.",
                            style: theme.textTheme.labelMedium,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(35.h, 19.v, 348.h, 20.v),
      ),
    );
  }

  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      prefix: Container(
        margin: EdgeInsets.fromLTRB(20.h, 18.v, 12.h, 18.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgLockBlueGray300,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      prefixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 18.v, 20.h, 18.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgEyeoff,
          height: 20.adaptSize,
          width: 20.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 56.v,
      ),
      obscureText: true,
      contentPadding: EdgeInsets.symmetric(vertical: 17.v),
    );
  }

  /// Section Widget
  Widget _buildSignIn(BuildContext context) {
    return const CustomElevatedButton(
      text: "Sign In",
    );
  }

  /// Section Widget
  Widget _buildOr(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 9.v,
          ),
          child: SizedBox(
            width: 139.h,
            child: const Divider(),
          ),
        ),
        Text(
          "Or",
          style: theme.textTheme.bodyMedium,
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 9.v,
          ),
          child: SizedBox(
            width: 139.h,
            child: const Divider(),
          ),
        ),
      ],
    );
  }

  Widget _buildSignInWithGoogle(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign In with Google",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgFlatcoloriconsgoogle,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }

  Widget _buildSignInWithApple(BuildContext context) {
    return CustomOutlinedButton(
      text: "Sign In with Apple",
      leftIcon: Container(
        margin: EdgeInsets.only(right: 30.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgAntdesignapplefilled,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
    );
  }
}
