import 'package:flutter/material.dart';
import 'package:gelarlapak/_constant.dart';
import 'package:gelarlapak/global_components/round_button.dart';

class Body extends StatelessWidget {
  final String image, title;

  const Body({Key? key, required this.image, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
                width: size.width,
                height: size.height * 0.1,
                color: kBgColor,
                alignment: Alignment.bottomCenter,
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  "Details Events",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                )),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Expanded(
                    child: Text(title,
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.bold))),
                IconButton(onPressed: null, icon: Icon(Icons.favorite)),
              ]),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  image,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(
                    child: Text("Date",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.bold))),
                Text("< 600m from you",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.bold)),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(children: [
                Expanded(
                    child: Row(
                  children: [
                    RoundButton(
                        width: size.width / 2 - 12,
                        innerpadding: 15,
                        pressed: () => {},
                        text: "12/01/2021",
                        padding: 10),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 2)),
                    RoundButton(
                        width: size.width / 2 - 12,
                        innerpadding: 15,
                        pressed: () => {},
                        text: "12/02/2021",
                        padding: 10),
                  ],
                )),
              ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(
                    child: Text("Sisa Slot",
                        style: TextStyle(
                            color: Colors.black.withOpacity(0.4),
                            fontWeight: FontWeight.bold))),
                Text("Harga Gelar Tiket Pada Event Ini",
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.4),
                        fontWeight: FontWeight.bold)),
              ]),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(children: [
                Expanded(
                    child: Text("0/3",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black.withGreen(190),
                            fontWeight: FontWeight.bold))),
                Text("Rp. 30.000/Hari",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black.withGreen(190),
                        fontWeight: FontWeight.bold)),
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      Text("Facilities",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 5),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(children: [
                              Expanded(
                                  child: Text("Bootstand",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                          fontWeight: FontWeight.bold))),
                              Text("Koneksi",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.bold)),
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(children: [
                              Expanded(
                                  child: Text("Makan Siang Gratis",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                          fontWeight: FontWeight.bold))),
                              Text("Voucher Diskon",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.bold)),
                            ]),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(children: [
                              Expanded(
                                  child: Text("Goodie Bag",
                                      style: TextStyle(
                                          color: Colors.black.withOpacity(0.4),
                                          fontWeight: FontWeight.bold))),
                              Text("Kaos Event",
                                  style: TextStyle(
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.bold)),
                            ]),
                          ),
                        ],
                      )
                      
                    ),
                  )
                ],
              ),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(children: [
                      Text("Description",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black.withOpacity(0.8),
                              fontWeight: FontWeight.bold)),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Text("We are very thrilled to inform that THE BIGGEST ANNUAL Business Case Competition is open for registration. In collaboration with one of the most well-known game developer in Southeast Asia, Garena Indonesia with this year’s theme: How to Create a Strong Player Management. Calling out all active diploma and bachelor degree students who are willing to challenge themselves and gain new experiences through IBSC! The HUGE PRIZE worth 2400 USD is waiting for you! Moreover, the Early Bird phase offer is LIMITED so go register your team IMMEDIATELY!!",
                                  style: TextStyle(
                                      height: 1.5,
                                      color: Colors.black.withOpacity(0.4),
                                      fontWeight: FontWeight.bold)),
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
