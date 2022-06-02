import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import './circle_button.dart';
import './icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          fontFamily: 'Montserrat',
        ),
        home: Scaffold(
            body: SingleChildScrollView(
                child: Stack(
          children: <Widget>[
            Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(33, 48, 33, 42),
                child: Image.asset(
                  "assets/images/product1.jpg",
                  width: 348,
                  height: 277,
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(33, 42, 41, 162),
                child: Row(
                  children: <Widget>[
                    Image.asset(
                      "assets/images/product1.jpg",
                      width: 100,
                      height: 75,
                    ),
                    const SizedBox(width: 19),
                    Image.asset("assets/images/product2.jpg",
                        width: 100, height: 75),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(33, 0, 201, 13.83),
                child: const Text(
                  "Floating Phone",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      letterSpacing: .2,
                      color: Color(0Xff252B42)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(58.83, 13.83, 13, 13.83),
                child: Row(
                  children: <Widget>[
                    RatingBar.builder(
                      itemSize: 18.35,
                      initialRating: 3,
                      minRating: 0,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(width: 11.83),
                    const Text("10 Reviews",
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            letterSpacing: .2,
                            color: Color(0Xff737373)))
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(57, 16.5, 190, 13.83),
                child: const Text(
                  "\$1,139.33",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0Xff252B42),
                    letterSpacing: .1,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(57, 1.5, 130, 13.83),
                  child: Row(children: const <Widget>[
                    Text(
                      "Availability:",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        letterSpacing: .2,
                        color: Color(0Xff737373),
                      ),
                    ),
                    Text(
                      "In Stock",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          letterSpacing: .2,
                          color: Color(0Xff23A6F0)),
                    ),
                  ])),
              Container(
                decoration: const BoxDecoration(
                  border:
                      Border(bottom: BorderSide(width: 2, color: Colors.grey)),
                ),
                margin: const EdgeInsets.fromLTRB(57, 16.5, 45, 13.83),
                child: const Text(
                  "Met minim Mollie non desert Alamo est sit cliquey dolor do met sent. RELIT official consequent door ENIM RELIT Mollie. Excitation venial consequent sent nostrum met.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0Xff858585)),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(57, 19, 207, 58),
                child: Row(
                  children: const [
                    CButton("23A6F0"),
                    SizedBox(
                      width: 10,
                    ),
                    CButton("2DC071"),
                    SizedBox(
                      width: 10,
                    ),
                    CButton("E77C40"),
                    SizedBox(
                      width: 10,
                    ),
                    CButton("252B42"),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(55, 58, 59, 76),
                  child: Row(children: [
                    TextButton(
                      style: TextButton.styleFrom(primary: Colors.blue),
                      child: const Text(
                        'Select Options',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0Xff858585)),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 10),
                    const CIcon(Icons.favorite_border),
                    const SizedBox(width: 10),
                    const CIcon(Icons.shopping_cart),
                    const SizedBox(width: 10),
                    const CIcon(Icons.remove_red_eye),
                  ]))
            ])
          ],
        ))));
  }
}
