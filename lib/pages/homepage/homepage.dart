
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/pages/bookcard.dart';
import 'package:login/pages/data.dart';
import 'package:login/pages/homepage/bookdetails/bookdetail.dart';
import 'package:login/pages/homepage/widgets/appbar.dart';
import 'package:login/pages/homepage/widgets/categorywidget.dart';





class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
              height: 500,
              color: Theme.of(context).colorScheme.primary,
              child: Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          homeappbar(),
                          SizedBox(
                            height: 50,
                          ),
                          Row(children: [
                            Text(
                              "Well come to our app",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineMedium
                                  ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .background),
                            ),
                          ]),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text(
                                  "Time to read book and enhance your knowledge",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelSmall
                                      ?.copyWith(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background),
                                ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Text(
                                "you can read what you want",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall
                                    ?.copyWith(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .background),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              Text(
                                "Topics",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineMedium
                                    ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .background,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: categorydata
                                  .map((e) => categorywidget(
                                  iconpath: e["Icon"]!,
                                  btnName: e["lebal"]!))
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "python",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookdata1
                          .map(
                            (e) => bookcard(
                          title: e.title!,
                          coverUrl: e.coverUrl!,
                          ontap: () {
                            Get.to(bookdetail(book: e,));
                          },
                        ),
                      )
                          .toList(),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(
                        "Computer Science",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookdata2
                          .map(
                            (e) => bookcard(
                          title: e.title!,
                          coverUrl: e.coverUrl!,
                          ontap: () {
                            Get.to(bookdetail(book: e,));
                          },
                        ),
                      )
                          .toList(),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        "Machine Learning",
                        style: Theme.of(context).textTheme.labelMedium,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookdata3
                          .map(
                            (e) => bookcard(
                          title: e.title!,
                          coverUrl: e.coverUrl!,
                          ontap: () {
                            Get.to(bookdetail(book: e,));
                          },
                        ),
                      )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
