import 'package:flutter/material.dart';
import 'package:flutter_ecom/models/models.dart';
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
      body: Column(
        children: [
          Container(
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
                  .toList(),
            ),
          ),
          SectionTitle(title: 'RECOMMENDED'),
          //Product Card
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                height: 150,
                child: Image.network(
                  Product.product[0].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 60,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.5,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(50),
                  ),
                ),
              ),
              Positioned(
                top: 65,
                left: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.5 - 10,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: Row(children: [
                    Text(
                      Product.product[0].name,
                      style: Theme.of(context.textTheme.headl),
                    )
                  ]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
