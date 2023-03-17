import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  static const String routeName = '/cart';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const CartScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    // const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    // );
    return const Scaffold(
      appBar: CustomAppBar(title: 'Cart'),
      bottomNavigationBar: customnavbar(),
    );
  }
}
