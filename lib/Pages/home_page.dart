import 'package:flutter/material.dart';
import 'package:pro2/Pages/shop_page.dart';
import 'package:pro2/componets/bottom_nav_bar.dart';

import 'cart_page.dart';
class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
int _selected=0;
void navigateBottomBar(int index){
  setState(() {
    _selected=index;
  });
}
final List<Widget> pages=[
  // shopping page
  const ShopPage(),
  //cart page
 const CartPage(),
];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: BottomNavBar(
        onTabChange:(index)=>navigateBottomBar(index) ,
      ),
      drawer:  Drawer(
        backgroundColor: Colors.grey[800],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
        //logo
        DrawerHeader(child: Image.asset(
          "images/nike.jpeg",
        )),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Divider(color: Colors.grey[900],)),
      //other page
      const Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.home,color: Colors.white,),
          title: Text("Home",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),),
        ),

      ),
      const Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.info,color: Colors.white,),
          title: Text("About",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),),
        ),



      ),
      const Padding(
        padding: EdgeInsets.only(left: 25.0),
        child: ListTile(
          leading: Icon(Icons.logout,color: Colors.white,),
          title: Text("SignOff",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white70),),
        ),

      )
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context)=>IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },  icon: const Icon(Icons.menu,
            color: Colors.black,),
        ),

        ),
      ),
      body: pages[_selected],
    );
  }
}
