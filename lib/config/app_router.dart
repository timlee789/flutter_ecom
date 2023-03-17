import 'package:flutter/material.dart';
import 'package:flutter_ecom/screen/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print("This is route: ${settings.name}");
    switch (settings.name) {
      case '/':
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case CartScreen.routeName:
        return CartScreen.route();
      case CatalogScreen.routeName:
        return CatalogScreen.route();
      case ProductScreen.routeName:
        return ProductScreen.route();
      case WishlistScreen.routeName:
        return WishlistScreen.route();

      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text('Error')),
            ),
        settings: const RouteSettings(name: '/Error'));
  }
}
