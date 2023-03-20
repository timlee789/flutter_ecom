import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/models.dart';
import '../../widgets/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String routeName = '/';
  static Route route() {
    return MaterialPageRoute(
        builder: (_) => const HomeScreen(),
        settings: const RouteSettings(name: routeName));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'LocalFlyer'),
      bottomNavigationBar: CustomNavBar(),
      body: Column(children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 1.5,
            viewportFraction: 0.9,
            enlargeCenterPage: true,
            enlargeStrategy: CenterPageEnlargeStrategy.height,
          ),
          items: Category.categories
              .map((category) => HeroCarouselCard(
                    category: category,
                    product: null,
                  ))
              .toList(),
        ),
        const SectionTitle(title: 'RECOMMENDED'),
        ProductCarousel(
            products: Product.products
                .where((product) => product.isRecommended)
                .toList()),
        const SectionTitle(title: 'MOST POPULAR'),
        ProductCarousel(
            products: Product.products
                .where((product) => product.isPopular)
                .toList()),
      ]),
    );
  }
}
