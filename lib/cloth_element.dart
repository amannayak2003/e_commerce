import 'package:e_commerce/my_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import "my_lib.dart";


List<dynamic> _clothData = [
  {
    "clothName" : "Leather Coat",
    "clothPrice" : "350",
    "clothRating" : "3.5",
    "clothImg" : "images/1.jpg",
  },
  
  {
    "clothName" : "Blue Shirt",
    "clothPrice" : "80",
    "clothRating" : "2.5",
    "clothImg" : "images/2.jpg",
  },
  

  {
    "clothName" : "Black Pants",
    "clothPrice" : "299",
    "clothRating" : "4.4",
    "clothImg" : "images/3.jpg",
  },
  

  {
    "clothName" : "Pants",
    "clothPrice" : "199",
    "clothRating" : "3.8",
    "clothImg" : "images/6.jpg",
  },
  

  {
    "clothName" : "Black Coat",
    "clothPrice" : "359",
    "clothRating" : "4.2",
    "clothImg" : "images/7.jpg",
  },
  

  {
    "clothName" : "Pink Pants",
    "clothPrice" : "175",
    "clothRating" : "3.2",
    "clothImg" : "images/8.jpg",
  },
  

  {
    "clothName" : "White Coat",
    "clothPrice" : "499",
    "clothRating" : "3.6",
    "clothImg" : "images/9.jpg",
  },  

];

class ClothElement extends StatelessWidget {

  const ClothElement({super.key, this.clothName = "Null", this.clothPrice = "Null", this.clothRating = "Null", this.clothImg = "Null"});

  final String clothName;
  final String clothPrice;
  final String clothRating;
  final String clothImg;
  

  static ClothElement random()
  {
    var rData = _clothData[rInt(max: _clothData.length)];  

    return ClothElement(
      clothName: rData["clothName"],
      clothPrice: rData["clothPrice"],
      clothRating: rData["clothRating"],
      clothImg: rData["clothImg"],
    );  
  }

  @override
  Widget build(BuildContext context) {

      return Container(
        height: 280,
        width: 130,
      
        // color: Colors.amber,
      
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
        
          children: [
            
            //CLOTH IMAGE
            Container(
              
              height: 200,
              // width: 130,
              // color: Colors.blue,
              
              child: Stack(
                
                children: [
                  
                  SizedBox.expand(
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        
                        child: Image.asset(clothImg, fit: BoxFit.cover,height: 200, width: 130,)),
                  ),
                  
                  const Positioned(
                      right: 10,
                      top: 5,
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 15,
                      )),
                ],
              ),
            ),
            
            
        
            //CLOTH NAME
            Text(clothName, textAlign: TextAlign.start, 
            style: const TextStyle(fontWeight: FontWeight.bold, color: MyTheme.primary),),
        
      
      
            //CLOTH PRICE & RATING
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
        
              children: [
                //CLOTH PRICE
                Text("$clothPrice\$", textAlign: TextAlign.start, 
                  style: const TextStyle(color: MyTheme.primary),),
                
                //STAR ICON
                // Icon(Icons.star,color: Colors.amber, size: 10,),
      
                //CLOTH RATING
                Text(clothRating, textAlign: TextAlign.end,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 10,color: MyTheme.primary),),
              ],
            ),
        
        
            //ADD TO CART BUTTON
            ElevatedButton(
              
              onPressed: null,
              
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(MyTheme.primary),
                shape: WidgetStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),)),
                
                ),
              
              child: const Text("Add to cart", style: TextStyle(color: Colors.white),))
        
          ],),
      );

  }
}