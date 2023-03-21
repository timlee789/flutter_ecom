import 'package:equatable/equatable.dart';
import 'package:flutter_ecom/models/product_model.dart';

class Cart extends Equatable {
  Cart();

  double get subtotal =>
      products.fold(0, (total, current) => total + current.price);

  //String get subtotalString => subtotal.toStringAsFixed(2);

  double deliveryFee(subtotal) {
    if (subtotal >= 30.0) {
      return 0.0;
    } else {
      return 10.0;
    }
  }

  double total(subtotal, deliveryFee) {
    return subtotal + deliveryFee(subtotal);
  }

  String freeDelivery(subtotal) {
    if (subtotal >= 30.0) {
      return 'You have Free Delivery';
    } else {
      double missing = 30.0 - subtotal;
      return "Add \$${missing.toStringAsFixed(2)} for FREE Delivery";
    }
  }

  String get subtotalString => subtotal.toStringAsFixed(2);
  String get totalString => total(subtotal, deliveryFee).toStringAsFixed(2);
  String get deliveryFeeString => deliveryFee(subtotal).toStringAsFixed(2);
  String get freeDeliveryString => freeDelivery(subtotal);

  List<Product> products = [
    const Product(
      name: 'Soft Drink #1',
      category: 'Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      price: 12.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: 'Soft Drink #2',
      category: 'Soft Drink',
      imageUrl:
          'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #3',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #4',
      category: 'Smoothies',
      imageUrl:
          'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: true,
    ),
    const Product(
      name: 'Soft Drink #5',
      category: 'Water',
      imageUrl:
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      price: 12.99,
      isRecommended: true,
      isPopular: false,
    ),
    const Product(
      name: 'Soft Drink #6',
      category: 'Water',
      imageUrl:
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
      price: 2.99,
      isRecommended: true,
      isPopular: false,
    ),
  ];

  @override
  List<Object?> get props => [];
}
