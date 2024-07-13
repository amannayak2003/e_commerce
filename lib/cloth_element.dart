import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ClothElement extends StatelessWidget {

  const ClothElement({super.key, this.clothName = "Null", this.clothPrice = "Null", this.clothRating = "Null"});

  final String clothName;
  final String clothPrice;
  final String clothRating;
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      width: 155,

      // color: Colors.amber,

      child: Column(
        
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          
          //CLOTH IMAGE
          Stack(
            children: [
             
            Container(
              height: 150,
              width: 155,
              // color: Colors.blue,
              child: Card(child: Image.asset("1.jpg",fit: BoxFit.cover,),),
            ),

            Align(
              alignment: Alignment.topRight,
              child: Icon(Icons.favorite_border_outlined))
            ]
            
          ),


          //CLOTH NAME
          Padding(
            padding: const EdgeInsets.only(right: 128),
            child: Text(clothName),
          ),


          //CLOTH PRICE & RATING
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              //CLOTH PRICE
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(clothPrice),
              ),
              
              //CLOTH RATING
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Text(clothRating),
              ),
            ],
          ),


          //ADD TO CART BUTTON
          ElevatedButton(
            
            onPressed: null,
            
            // style: ElevatedButton.styleFrom(
            //   shape: RoundedRectangleBorder(
            //   borderRadius: BorderRadius.circular(8), // Adjust the radius here  
            // ),
            
            // backgroundColor: Color.fromARGB(255, 7, 66, 120),
            
            // // foregroundColor:  Color.fromARGB(255, 7, 66, 120),
            // ), 

            style: ButtonStyle(backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 7, 66, 120)) ),
            
            child: const Text("Add to cart", style: TextStyle(color: Colors.white),))

        ],),
    );
  }
}