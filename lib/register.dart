import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'main.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: top1(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Username",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 18,
                          color: MyApp.primary,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              textfield_username(),
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text("Password",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 18,
                          color: MyApp.primary,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              textfield_password(),
// checkbox
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyApp.secondary),
                    onPressed: () {},
                    child: RichText(
                        text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: 'L',
                          style: Theme.of(context).textTheme.displayLarge,
                        ),
                        TextSpan(
                            text: 'ogin',
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(fontSize: 23)),
                      ],
                    )),
                  ),
                ),
              ),
              const Text(
                  "------------------------------OR------------------------------"),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {}, child: FaIcon(FontAwesomeIcons.google)),
                  ElevatedButton(
                      onPressed: () {},
                      child: FaIcon(FontAwesomeIcons.facebook)),
                  ElevatedButton(
                      onPressed: () {}, child: FaIcon(FontAwesomeIcons.apple)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account ?',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 15),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InkWell(
                        onTap: () {
                          print('Register button');
                        },
                        child: Text(
                          'SignUp',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(
                                  color: MyApp.primary,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.bold),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class top1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Login',
        style: Theme.of(context)
            .textTheme
            .displayLarge!
            .copyWith(color: MyApp.primary));
  }
}

class textfield_username extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Color(0XFF003135), width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: MyApp.secondary, width: 1)),
          ),
        ),
      ),
    );
  }
}

class textfield_password extends StatelessWidget {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, right: 5),
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: TextFormField(
          obscureText: _isHidden,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.visibility),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Color(0XFF003135), width: 1)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: MyApp.secondary, width: 1)),
          ),
        ),
      ),
    );
  }
}
