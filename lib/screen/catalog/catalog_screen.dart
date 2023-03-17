import 'package:flutter/material.dart';
import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});
  static const String routeName = '/catalog';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const CatalogScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    // const MaterialApp(
    //   debugShowCheckedModeBanner: false,
    // );
    return const Scaffold(
      appBar: CustomAppBar(title: 'Catalog'),
      bottomNavigationBar: customnavbar(),
    );
  }
}
