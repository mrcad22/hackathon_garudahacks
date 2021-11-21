import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gelarlapak/_constant.dart';
import 'package:gelarlapak/global_components/card.dart';
import 'package:gelarlapak/global_components/round_button.dart';

class Body extends StatelessWidget {
  Container headerSearch(size) {
    return Container(
      height: size.height * 0.2,
      width: size.width,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.2 - 30,
            decoration: BoxDecoration(
                color: kBgColor,
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  height: 54,
                  padding: EdgeInsets.symmetric(horizontal: defaultPad + 4),
                  margin: EdgeInsets.symmetric(horizontal: defaultPad),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 10),
                            blurRadius: 50,
                            color: kBgColor.withOpacity(0.4))
                      ]),
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                        decoration: InputDecoration(
                            hintText: "Search",
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none),
                      )),
                      IconButton(onPressed: null, icon: Icon(Icons.search))
                    ],
                  )))
        ],
      ),
    );
  }

  Container headerGroup(
    size,
    text,
    pressEvent,
  ) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
        child: Row(
          children: [
            Expanded(
                child: Text(text,
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
            RoundButton(
                padding: 0,
                width: size.width * 0.3,
                innerpadding: 0,
                pressed: pressEvent,
                text: 'See All')
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      child: 
        SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              headerSearch(size),
              headerGroup(size, "Event Mendatang", () => {}),
              Container(
                height: size.height * 0.3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CardEvents(
                          size: size,
                          title: "event",
                          desc: "desc",
                          image: "assets/images/image_1.png");
                    }),
              ),
              Padding(padding: EdgeInsets.only(top: 30)),
              headerGroup(size, "Yuk, Cari event seru disekitarmu", () => {}),
              Row(
                children: [
                  Column(children: [
                        CardEvents(
                            size: size,
                            title: "Music Event",
                            desc: "desc",
                            image: "assets/events/event_1.jpg"),
                        CardEvents(
                            size: size,
                            title: "New Year 2021 Party",
                            desc: "desc",
                            image: "assets/events/event_2.jpg"),
                    ]),
                  Column(children: [
                        CardEvents(
                            size: size,
                            title: "Elegant Event",
                            desc: "desc",
                            image: "assets/events/event_3.jpg"),
                        CardEvents(
                            size: size,
                            title: "event",
                            desc: "desc",
                            image: "assets/events/event_4.jpg")
                    ]),
                ],
              )
            ],
          ),
        ),
    );
  }

  // return Column(
  //     children: [
  //       SingleChildScrollView(
  //         scrollDirection: Axis.vertical,
  //         child: Column(
  //           children: [
  //             headerSearch(size),
  //             headerGroup(size, "Event Mendatang", () => {}),
  //             SingleChildScrollView(
  //               scrollDirection: Axis.horizontal,
  //               child: Row(
  //                 children: [
  //                   card(size, "event", "desc", Image.asset("assets/images/image_1.png", width: size.width * 0.4)),
  //                   card(size, "event", "desc", Image.asset("assets/images/image_1.png", width: size.width * 0.4)),
  //                   card(size, "event", "desc", Image.asset("assets/images/image_1.png", width: size.width * 0.4)),
  //                   card(size, "event", "desc", Image.asset("assets/images/image_1.png", width: size.width * 0.4)),
  //                 ],
  //               ),
  //             ),
  //             headerGroup(size, "Yuk, Cari event seru disekitarmu", () => {}),
  //             Container(
  //               height: 100,
  //               child: GridView.count(
  //                 crossAxisCount: 2,
  //                 children: [
  //                   Container(
  //                     decoration: BoxDecoration(
  //                       color: Colors.black
  //                     ),
  //                   )
  //                 ],
  //               ),
  //             )
  //           ],
  //         ),
  //       )
  //     ],
  //   );
}
