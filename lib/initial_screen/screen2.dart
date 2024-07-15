import 'package:e_commerce/initial_screen/screen1.dart';
import 'package:e_commerce/initial_screen/screen3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class screen2 extends StatelessWidget {
  const screen2({super.key});

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
                "assets/images/images.png",
                fit: BoxFit.cover,
              ),
            ),
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
                        Navigator.pop(
                          context,
                          MaterialPageRoute(builder: (context) => home()),
                        );
                      },
                      icon: Icon(CupertinoIcons.back)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10, right: 10),
                  child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => screen3()),
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
