import 'package:flutter/material.dart';


class bookcard extends StatelessWidget {
  final String coverUrl;
  final String title;
  final VoidCallback ontap;
  const bookcard({super.key, required this.coverUrl, required this.title, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.only(right: 20),
      child: InkWell(
        onTap: ontap,
        child: SizedBox(
          width: 120,
          child: Column(children: [
            Container(
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(2,2),
                ),
              ],),
              child: ClipRRect(
                borderRadius:BorderRadius.circular(10),
                child: Image.asset(coverUrl,
                  width: 120,),
              ),
            ),
            SizedBox(height:10 ,),
            Text(title,
              textAlign: TextAlign.center,
              maxLines: 1,
              style: Theme.of(context).textTheme.bodyMedium,),
          ],
          ),
        ),
      ),
    );
  }
}
