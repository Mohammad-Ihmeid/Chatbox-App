import 'package:chatbox_app/app/presentation/screens/splash_screen.dart';
import 'package:chatbox_app/core/global/routes/app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.splash;

  static final routes = {
    Routes.splash: (context) => const SplashScreen(),
  };
}
