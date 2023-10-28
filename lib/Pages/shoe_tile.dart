import 'package:flutter/material.dart';

import '../model/shoe.dart';

class ShoeTile extends StatelessWidget {

  Shoe shoe;
  void Function()? onTap;
   ShoeTile({
    Key? key,
    required this.shoe,
     required this.onTap
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8)
      ),
      child: SingleChildScrollView(
        child: Column(
          children:  [
            //image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
                child: Image.asset(shoe.imagePath)),
            //description


                Text(shoe.description,style: TextStyle(color: Colors.grey[900]),),
            Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //shoe name
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(shoe.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      SizedBox(height: 5,),
                      Text("'\$'"+shoe.price,style: TextStyle(
                        color: Colors.grey
                      ),)

                    ],
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: Container(
                      padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.only(topLeft:Radius.circular(12),bottomRight: Radius.circular(12))
                        ),
                        child: Icon(Icons.add,color: Colors.white,)),
                  )
                  // shoe price
                  //plus button
                ],
              ),
            )
            //price + button
            // button to add to cart
          ],
        ),
      ),
    );
  }
}
