import 'package:flutter/material.dart';
import '../../models/category_model.dart';
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
      bottomNavigationBar: customnavbar(),
      body: Container(
        child: CarouselSlider(
            options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.5,
              viewportFraction: 0.9,
              enlargeCenterPage: true,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
            ),
            items: Category.categories
                .map((category) => HeroCarouselCard(category: category))
                .toList()),
      ),
      //widget(child: Text('RECOMMENDED', style: Theme.of(context).textTheme.headline3)),
    );
  }
}
