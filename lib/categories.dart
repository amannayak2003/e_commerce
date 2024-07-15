import 'package:flutter/material.dart';
import 'cloth_element.dart';
import 'my_theme.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      
      home: Scaffold(
        
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              
            
              //SEARCH BAR
               Row(
                children: [
                  
                  Expanded(
                    child: ListTile(
                    
                    //SEARCH FIELD
                    title: TextField(
                      decoration: InputDecoration(
                        label: Text("Search"),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)))
                      ),
                    
                    //FILTER
                    trailing: Container(
                      height: 60,
                      child: OutlinedButton(
                        onPressed: null, 
                        child: Icon(Icons.menu),
                        style: OutlinedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                      ),
                    ),
                    
                    )
                  )
                  ],
              
              ),
              
              //SPACING
              const SizedBox(height: 15,),
          
              //CATEGORIES
               Row(
                
                mainAxisAlignment: MainAxisAlignment.start,
          
                children: [
                  OutlinedButton(onPressed: null, child: Text("Women", style: const TextStyle(fontWeight: FontWeight.bold, color: MyTheme.primary),), 
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  ),
          
                  SizedBox(width: 20,),
          
                  OutlinedButton(onPressed: null, child: Text("Men", style: const TextStyle(fontWeight: FontWeight.bold, color: MyTheme.primary),),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  ),
                  
                  SizedBox(width: 20,),
          
                  OutlinedButton(onPressed: null, child: Text("Kids", style: const TextStyle(fontWeight: FontWeight.bold, color: MyTheme.primary),),
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))),
                  ),
                ],
              ),
          

              //SPACING
              const SizedBox(height: 30,),
          
              //GRIDVIEW
              Container(
                height: 300,
                child: GridView.builder(


                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 25,
                    childAspectRatio: 1
                    ),



                  itemCount: 10,

                  itemBuilder: (context, index) {

                    return ClothElement.random();
                  },
                ),
              )
          
              
          
            ],
            ),
        ),
          ),
    );
  }
}