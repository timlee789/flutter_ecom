import 'package:flutter/material.dart';
import '../../models/models.dart';
import '../../widgets/widgets.dart';

class CatalogScreen extends StatelessWidget {
  //const CatalogScreen({super.key});
  static const String routeName = '/catalog';

  static Route route({required Category category}) {
    return MaterialPageRoute(
        builder: (context) => CatalogScreen(category: category),
        settings: const RouteSettings(name: routeName));
  }

  final Category category;
  const CatalogScreen({super.key, required this.category});
  //const CategoryScreen({requred this.category});
  @override
  Widget build(BuildContext context) {
    final List<Product> categoryProducts = Product.products
        .where((product) => product.category == category.name)
        .toList();
    return Scaffold(
        appBar: CustomAppBar(title: category.name),
        bottomNavigationBar: CustomNavBar(),
        body: GridView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 1.15),
          itemCount: categoryProducts.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: ProductCard(
                product: categoryProducts[index],
                widthFactor: 2.2,
              ),
            );
          },
        ));
  }
}
