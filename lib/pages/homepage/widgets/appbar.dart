
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:login/login/login.dart';
import 'package:login/onboarding/welcome_view.dart';
import 'package:login/pages/theme/colors.dart';



class homeappbar extends StatelessWidget {
  const homeappbar({super.key});


  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset("assets/icons/dashboard.svg"),
        Text("Book Searching App",style: Theme.of(context).textTheme.headlineMedium?.
        copyWith(color: Theme.of(context).colorScheme.background,),),
    CircleAvatar(
    backgroundColor:
    Theme.of(context).colorScheme.background,
    child: InkWell(onTap: (){
      Get.to(WelcomeView());
    },
    child: Icon(Icons.login_rounded),),
    ),

      ],
    );
  }
}
