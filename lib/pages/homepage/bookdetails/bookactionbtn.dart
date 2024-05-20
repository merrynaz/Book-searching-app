
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:login/pages/bookopen/BookPage.dart';

class bookactionbtn extends StatelessWidget {
  final String bookUrl;
  const bookactionbtn({super.key, required this.bookUrl,});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      height: 60,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {
              Get.to(BookPage(
                bookUrl: bookUrl,
              ));
            },
            child:  Row(
                children: [
                  SvgPicture.asset("assets/icons/book.svg"),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "READ BOOK",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .background),
                  ),
                      ],
                    ),
    ),
    ],
    ),
    );
  }
}
