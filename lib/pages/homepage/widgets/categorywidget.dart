import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class categorywidget extends StatelessWidget {
  final String iconpath;
  final String btnName;
  const categorywidget({super.key, required this.iconpath, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap:(){},
        child: Container(
          padding:EdgeInsets.symmetric(horizontal: 15,vertical: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Theme.of(context).colorScheme.background),
          child: Row(
            children: [
              SvgPicture.asset(iconpath),
              SizedBox(width: 10,),
              Text(btnName),
            ],
          ),
        ),
      ),
    );
  }
}
