import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Luther Max',
        price: '230',
        imagePath: 'lib/images/sneaker1.jpg',
        description: 'Wear Style And Elegance'),
    Shoe(
        name: 'Max Zoom',
        price: '230',
        imagePath: 'lib/images/sneaker2.jpg',
        description: 'Style,Beauty And Seduction'),
    Shoe(
        name: 'Future Boy',
        price: '210',
        imagePath: 'lib/images/sneaker3.jpg',
        description: 'Best Way To Rock The Summer'),
    Shoe(
        name: 'Pluto Way',
        price: '220',
        imagePath: 'lib/images/sneaker4.jpg',
        description: 'Best Your Meat'),
  ];
  List<Shoe> userCart = [];
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
