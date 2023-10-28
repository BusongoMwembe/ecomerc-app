import 'package:flutter/material.dart';
import 'package:pro2/model/shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes
  List<Shoe> shoes=[
    //Shoe(name: "Air force", price: "60", imagePath: "images/airf.jpeg", description: "Air force gets you in air"),
    Shoe(name: "Nike shoe", price: "90", imagePath: "images/niike.jpeg", description: "jump with mike"),
    Shoe(name: "Nike wear", price: "80", imagePath: "images/nike.jpeg", description: "some jump and walk like Mike"),
    Shoe(name: "sport nike", price: "60", imagePath: "images/sport.jpeg", description: "Sport nike"),
    Shoe(name: "Namak", price: "160", imagePath: "images/turamfav.jpeg", description: "jump with mighty"),
  ];
  //lis of items in the cart
List<Shoe> cartItems=[];
  //get list of shoess for sale
List<Shoe> getShoes(){
  return shoes;

}
  //get cart
List<Shoe> getCart(){
  return cartItems;
}

  //add items to cart
void addItemsToCart(Shoe shoe){
  cartItems.add(shoe);
  notifyListeners();
}
  //remove itemsfrom cart
void removeItemFromCart(Shoe shoe){
  cartItems.remove(shoe);
  notifyListeners();
}

}