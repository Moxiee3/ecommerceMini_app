import 'package:ecommerce_app/models/product.dart';
import 'package:flutter/material.dart';

class Shop extends ChangeNotifier {
  // products for sale

  final List<Product> _shop = [
    //product 1
    Product(
      name: "product 1",
      price: 99.99,
      description: 'Item description..',
      imagePage: 'assets/image.png',
    ),
    //product 2
    Product(
      name: "product 2",
      price: 99.99,
      description: 'Item description..',
      imagePage: 'assets/image.png',
    ),
    //product 3
    Product(
      name: "product 3",
      price: 99.99,
      description: 'Item description..',
      imagePage: 'assets/image.png',
    ),
    //product 4
    Product(
      name: "product 4",
      price: 99.99,
      description: 'Item description..',
      imagePage: 'assets/image.png',
    ),
  ];

  // user cart
  List<Product> _cart = [];

  //get product list

  List<Product> get shop => _shop;

  //add item to cart

  List<Product> get cart => _cart;

//add item to cart
  void addToCart(Product item) {
    _cart.add(item);
    notifyListeners();
  }

  //remove item from cart

  void removeFormCart(Product item) {
    _cart.remove(item);
    notifyListeners();
  }
}
