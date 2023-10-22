import 'package:chatbox_app/app/presentation/components/widget/or_widget.dart';
import 'package:chatbox_app/app/presentation/components/widget/social_widget.dart';
import 'package:chatbox_app/app/presentation/components/widget/text_form_field_widget.dart';
import 'package:chatbox_app/core/global/theme/app_assets.dart';
import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back),
          color: AppColorsLight.textButtonColor,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: 50.sTP(context),
          bottom: 25.sBP(context),
          left: 25.sLP(context),
          right: 25.sRP(context),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Log in to Chatbox",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(height: 3.sH(context)),
            Padding(
              padding: EdgeInsets.only(
                left: 10.sLP(context),
                right: 10.sRP(context),
              ),
              child: Text(
                "Welcome back! Sign in using your social account or email to continue us",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 4.sH(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SocialWidget(
                  svgIcon: IconsAssets.facebookIcon,
                  circularColor: AppColorsLight.textButtonColor,
                ),
                SizedBox(width: 5.sW(context)),
                const SocialWidget(
                  svgIcon: IconsAssets.googleIcon,
                  circularColor: AppColorsLight.textButtonColor,
                ),
                SizedBox(width: 5.sW(context)),
                const SocialWidget(
                  svgIcon: IconsAssets.appleBlackIcon,
                  circularColor: AppColorsLight.textButtonColor,
                )
              ],
            ),
            SizedBox(height: 3.sH(context)),
            const ORWidget(
              oRColor: AppColorsLight.displaySmallColor,
            ),
            SizedBox(height: 3.sH(context)),
            TextFormFieldWidget(
              labelText: "Your email",
              controller: TextEditingController(),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 3.sH(context)),
            TextFormFieldWidget(
              labelText: "Password",
              controller: TextEditingController(),
              keyboardType: TextInputType.visiblePassword,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: Text("Log in"),
                    ),
                  ),
                  SizedBox(height: 2.sH(context)),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                          color: AppColorsLight.primaryColor,
                        ),
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
