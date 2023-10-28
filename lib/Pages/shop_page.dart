import 'package:flutter/material.dart';
import 'package:pro2/Pages/shoe_tile.dart';
import 'package:pro2/model/shoe.dart';
import 'package:provider/provider.dart';

import '../model/cart.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  // add shoe to the cart
  void addShoeToCart(Shoe shoe){
    Provider.of<Cart>(context,listen: false).addItemsToCart(shoe);
    showDialog(context: context, builder: (context)=>AlertDialog(
      title: Text("Succefully added"),
      content: Text("Check Cart"),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context,value,child){
      return Column(
        children:  [
          //search bar
          Container(
            padding: const EdgeInsets.all(12.0),
            margin: EdgeInsets.all(25.0),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Search"),
                Icon(Icons.search)
              ],
            ),
          ),
          //messages
          Padding(
            padding: EdgeInsets.symmetric(vertical: 25.0),
            child: Text("Everyone flies ... some fly longer than others",
              style: TextStyle(
                  color: Colors.grey[600]
              ),),
          ),
          // Hot products
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text("Hot proucts on sell ",style: TextStyle(
                      fontSize: 24,
                  ),),
                  Icon(Icons.hot_tub),
                  Text("checkup on it",style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 18

                  ),)
                ],
              ),
            ),

          ),
          SizedBox(height: 10,),
          Expanded(child: ListView.builder(
              itemCount: value.shoes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                Shoe shoe=value.getShoes()[index];
                return ShoeTile(shoe: shoe,onTap: ()=>addShoeToCart(shoe),);
              })),
          const Padding(
            padding: EdgeInsets.only(top: 25.0 ,left: 25.0,right: 25.0),
            child: Divider(
              color: Colors.white,

            ),
          )
        ],
      );
    });
  }
}
