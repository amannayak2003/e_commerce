import 'package:e_commerce/initial_screen/screen2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              height: 350,
              child: Image.asset(
                "assets/images/e-commerce.jpg",
                fit: BoxFit.cover,
              ),
            ),
//   img

//   heading text
            Text(
              "one that allows people to buy and sell physical goods, services, and digital products over the internet rather than at a brick-and-mortar location",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontWeight: FontWeight.w300, fontSize: 18, letterSpacing: 5),
            ),
//   middle text
            Text(
                "Items such as clothing, furniture, food, or supplies are tangible products",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 15)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, left: 10),
                  child: IconButton(
                      onPressed: () {
                        return print("this is initial page");
                      },
                      icon: Icon(CupertinoIcons.back)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, right: 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => screen2()),
                        );
                      },
                      icon: Icon(Icons.next_plan)),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
