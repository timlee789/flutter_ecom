import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ecom/models/product_model.dart';

import '../../blocs/wishlist/wishlist_bloc.dart';
import '../../widgets/widgets.dart';

class ProductScreen extends StatelessWidget {
  //const ProductScreen({super.key});
  static const String routeName = '/product';
  static Route route({required Product product}) {
    return MaterialPageRoute(
        builder: (context) => ProductScreen(product: product),
        settings: const RouteSettings(name: routeName));
  }

  final Product product;
  const ProductScreen({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: product.name),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Container(
          height: 70,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
            BlocBuilder<WishlistBloc, WishlistState>(builder: (context, state) {
              return IconButton(
                onPressed: () {
                  context.read<WishlistBloc>().add(AddWishlistProduct(product));
                  final snackBar =
                      SnackBar(content: Text('Add to your wishlist!'));
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                },
                icon: Icon(
                  Icons.favorite,
                  color: Colors.white,
                ),
              );
            }),
            ElevatedButton(
              onPressed: () {},
              child: Text('ADD TO CART',
                  style: Theme.of(context).textTheme.headline3!),
            )
          ]),
        ),
      ),
      body: ListView(
        children: [
          CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
                aspectRatio: 1.5,
                viewportFraction: 0.9,
                enlargeCenterPage: true,
                enlargeStrategy: CenterPageEnlargeStrategy.height,
              ),
              items: [HeroCarouselCard(category: null, product: product)]),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  alignment: Alignment.bottomCenter,
                  color: Colors.black.withAlpha(50),
                ),
                Container(
                  margin: const EdgeInsets.all(5.0),
                  width: MediaQuery.of(context).size.width - 10,
                  height: 50,
                  color: Colors.black,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                          Text(
                            '${product.price}',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          )
                        ]),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Product Information',
                style: Theme.of(context).textTheme.headline3,
              ),
              children: [
                ListTile(
                  title: Text('fdlsfjakslfjaklsjfakslfjvc,zxvnxz,',
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: ExpansionTile(
              initiallyExpanded: true,
              title: Text(
                'Delivery Information',
                style: Theme.of(context).textTheme.headline3,
              ),
              children: [
                ListTile(
                  title: Text('fdlsfjakslfjaklsjfakslfjvc,zxvnxz,',
                      style: Theme.of(context).textTheme.bodyText1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
