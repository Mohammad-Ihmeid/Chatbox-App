import 'package:chatbox_app/app/presentation/components/widget/text_form_field_widget.dart';
import 'package:chatbox_app/core/global/theme/app_color/app_color_light.dart';
import 'package:chatbox_app/core/global/theme/responsive.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
        child: ListView(
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          children: [
            Text(
              "Sign up with Email",
              style: Theme.of(context).textTheme.titleLarge,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 3.sH(context)),
            Padding(
              padding: EdgeInsets.only(
                left: 10.sLP(context),
                right: 10.sRP(context),
              ),
              child: Text(
                "Get chatting with friends and family today by signing up for our chat app!",
                style: Theme.of(context).textTheme.displaySmall,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 6.sH(context)),
            TextFormFieldWidget(
              labelText: "Your name",
              controller: TextEditingController(),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 5.sH(context)),
            TextFormFieldWidget(
              labelText: "Your email",
              controller: TextEditingController(),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 5.sH(context)),
            TextFormFieldWidget(
              labelText: "Password",
              controller: TextEditingController(),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 5.sH(context)),
            TextFormFieldWidget(
              labelText: "Confirm Password",
              controller: TextEditingController(),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.emailAddress,
            ),
          ],
        ),
      ),
      bottomSheet: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.only(
            bottom: 25.sBP(context),
            left: 25.sLP(context),
            right: 25.sRP(context),
          ),
          child: ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text("Create an account"),
            ),
          ),
        ),
      ),
    );
  }
}
