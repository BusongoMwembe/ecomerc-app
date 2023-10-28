import 'package:flutter/material.dart';
import 'package:pro2/Pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body:  Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              //images showing logo
              Padding(
                padding: EdgeInsets.all(48.0),
                child: Image.asset(
                    "images/sport.jpeg",
                  height: 240,

                ),
              ),
               SizedBox(height: 24.0,),
              //Text to call to action
              const Text(
                  "Just Do it ",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 20.0
                ),
              ),
              SizedBox(height: 24.0,),
              const Text(

                "Brand New From The box with new kicks and kickers made with premium quality",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16,color: Colors.grey),
              ),
              SizedBox(height: 48.0,),
              //Button
              GestureDetector(
                onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage())),
                child: Container(
                  decoration:  BoxDecoration(
                    color: Colors.grey[900],
                    borderRadius: BorderRadius.circular(9.0)
                  ),
                  padding: EdgeInsets.all(25.0),
                  child: const Center(
                      child: Text(
                          "Pick One ",
                        style: TextStyle(
                          fontSize:19 ,
                            color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),

                      )
                  ),
                ),
              )
            ],

          ),
        ),
      ),
    );
  }
}
