import 'package:flutter/material.dart';
import 'package:snap_buy_app/core/routes/routes.dart';
import 'package:snap_buy_app/features/app_layout/ui/app_layout.dart';
import 'package:snap_buy_app/features/auth/login_screen.dart';
import 'package:snap_buy_app/features/auth/register.dart';
import 'package:snap_buy_app/features/home/data/model/product/product_model.dart';
import 'package:snap_buy_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:snap_buy_app/features/product_detials/ui/product_detials_screen.dart';
import 'package:snap_buy_app/features/spalsh/ui/splash_screen.dart';

import '../../features/orders/myOrdersPage.dart';
import '../../features/orders/orderDetailsPage.dart';
import '../../features/profile/profilePage.dart';

class AppRoutes {
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.appLayoutScreen:
        return MaterialPageRoute(builder: (_) => const AppLayoutScreen());

      case Routes.productDetailScreen:
        final product = settings.arguments as ProductModel;
        return MaterialPageRoute(
            builder: (_) => ProductDetailsScreen(product: product));

      case Routes.registerScreen:
        return MaterialPageRoute(builder: (_) => const Register());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());

      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => const ProfilePage());
      case Routes.orderScreen:
        return MaterialPageRoute(builder: (_) => const MyOrdersPage());
      case Routes.orderDetailsScreen:
        return MaterialPageRoute(builder: (_) => const OrderDetailsPage());
    }

    return null;
  }
}
