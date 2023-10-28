import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../componets/cart_item.dart';
import '../model/cart.dart';
import '../model/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder:
        (context,value,child)=>
            Padding(padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                //heading
                Text("My Cart",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
                SizedBox(height: 10,),
                Expanded(child: ListView.builder(
                  itemCount: value.getCart().length,
                    itemBuilder: (context,index){
                  Shoe individualShoe=value.getCart()[index];
                  return CartItem(shoe: individualShoe,);
                }))
              ],
            ),));
  }
}
