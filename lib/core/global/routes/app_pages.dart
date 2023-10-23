import 'package:chatbox_app/app/presentation/screens/onboarding_screen.dart';
import 'package:chatbox_app/app/presentation/screens/sign_in_screen.dart';
import 'package:chatbox_app/app/presentation/screens/sign_up_screen.dart';
import 'package:chatbox_app/app/presentation/screens/splash_screen.dart';
import 'package:chatbox_app/core/global/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = {
    Routes.splash: (context) => const SplashScreen(),
    Routes.onboarding: (context) => const OnboardingScreen(),
    Routes.signIn: (context) => const SignInScreen(),
    Routes.signUp: (context) => const SignUpScreen(),
  };
}
