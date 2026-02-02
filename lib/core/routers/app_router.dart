import '../di/dependency_injection.dart';
import 'routes.dart';
import '../../features/auth/logic/cubit/login_cubit.dart';
import '../../features/auth/ui/screens/login_screen.dart';
import '../../features/home/ui/home_screen.dart';
import '../../features/onboarding/onboarding_screen.dart';
import '../../features/auth/ui/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LogInScreen(),
          ),
        );

      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );

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
