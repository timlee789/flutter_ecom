import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});
  static const String routeName = '/product';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const ProductScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    // const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    // );
    return const Scaffold(
      appBar: CustomAppBar(title: 'Product'),
      bottomNavigationBar: customnavbar(),
    );
  }
}
