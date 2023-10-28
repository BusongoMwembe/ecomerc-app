import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class BottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
   BottomNavBar({
    Key? key,
    required this.onTabChange
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: GNav(
        color: Colors.grey[600],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color: Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          tabBorderRadius: 16,
          onTabChange: (value)=>onTabChange!(value),
          tabs: const [
        GButton(
            icon: Icons.home,
          text: "Pick",
        ),
        GButton(
            icon: Icons.shopping_bag,
          text: "Cart",
        )
      ]),
    );
  }
}
