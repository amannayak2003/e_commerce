import 'package:e_commerce/cloth_element.dart';
import 'package:e_commerce/ecomm_appbar.dart';
import 'package:e_commerce/navbar.dart';
import 'package:flutter/material.dart';
import 'two_c_button.dart';
import 'categories.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  //LIST OF ALL NAVIGATOR BUTTONS
  final List<NavigationDestination> navDestinations = const [
    
    NavigationDestination(
      icon: Icon(Icons.home_outlined), 
      label: "Home"),
    
    NavigationDestination(
        icon: Icon(Icons.grid_view_outlined), 
        label: "Gallery"),
    
    NavigationDestination(icon: Icon(Icons.people_outline), 
    label: "Connect"),
    
    NavigationDestination(
        icon: Icon(Icons.chat_bubble_outline_rounded), 
        label: "Chat"),
    
    NavigationDestination(
        icon: Icon(Icons.favorite_border), 
        label: "Favorites"),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        debugShowCheckedModeBanner: false,

        title: 'Flutter Demo',
        
        // theme: 
        // ThemeData(
          
        //   colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          
        //   useMaterial3: true,
        // ),

        home: 
        Scaffold(

          body: const Categories(),

          appBar: AppBar(
            leading: Icon(Icons.arrow_back_ios_rounded),
            
            title: Center(child: Text("Categories")),

            actions: [Icon(Icons.shopping_cart_outlined),],
            ),

          bottomNavigationBar: MyNavigationBar(
            navDestinations: navDestinations, updateCallback: null),
    
        ) 
        


        );
  }
}
