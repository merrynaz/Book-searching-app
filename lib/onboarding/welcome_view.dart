
import 'package:flutter/material.dart';
import 'package:login/login/login.dart';
import 'package:login/login/signup.dart';

import 'package:login/onboarding/color_extenstion.dart';
import 'package:login/onboarding/round_button.dart';
import 'package:login/pages/homepage/homepage.dart';



class WelcomeView extends StatefulWidget {
  const WelcomeView({super.key});

  @override
  State<WelcomeView> createState() => _WelcomeViewState();
}

class _WelcomeViewState extends State<WelcomeView> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          "assets/img/welcome_bg.png",
          width: media.width,
          height: media.height,
          fit: BoxFit.cover,
        ),
        SafeArea(
            child: Container(
          width: media.width,
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              SizedBox(
                height: media.width * 0.25,
              ),
              Text(
                "Books For\nEvery Taste.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: TColor.primary,
                    fontSize: 35,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: media.width * 0.25,
              ),
              RoundButton(title: "LOGIN IN", onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>  LoginPage()));

              }),

              SizedBox(
                height: 20,
              ),
              RoundButton(title: "SIGN Up", onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignUpPage()));

              }),

            ],
          ),

        )),

      ]),

    );
  }
}
