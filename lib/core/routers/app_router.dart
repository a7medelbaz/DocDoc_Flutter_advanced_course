import 'package:doc_doc/core/routers/routes.dart';
import 'package:doc_doc/features/auth/ui/screens/login_screen.dart';
import 'package:doc_doc/features/auth/ui/screens/onboarding_screen.dart';
import 'package:doc_doc/features/auth/ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route<dynamic>? generateRoute(final RouteSettings settings) {
    // ignore: unused_local_variable
    final Object? arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingRoute:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => const SignUpScreen(),
        );
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LogInScreen());

      // case Routes.homeScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => const HomeScreen(),
      //   );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}
