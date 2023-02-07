import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Popular extends StatefulWidget {
  const Popular({super.key});

  @override
  State<Popular> createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  List images = [
    "images/apples.jpg",
    "images/carrets.jpg",
    "images/oranges.jpg",
    "images/reds.jpg",
    "images/hotel.jpeg"
  ];
  List names = [
    "Four Points ",
    "Le Meridian ",
    "Kochi Merriott ",
    "Hill Palace ",
    "Grand Haytt "
  ];
  List caption = [
    'A promise of a new tomorrow.',
    'The category is: resort life.',
    'The setting sun kindled the sky.',
    'Vacation mode :on.',
    'Relaxation at a beautiful peak'
  ];
  List<String> price = [
    "\$71/night",
    "\$69/night",
    "\$87/night",
    "\$90/night",
    "\$80/night"
  ];
  List ratings = ["3.8", "4.1", "4.2", "3.9", "4.0"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //CustomScrollView(
            // slivers: [
            //SliverList(
            // delegate: SliverChildListDelegate(
            // [
            Column(
      children: [
        Form(
          child: Padding(
            padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(25.0),
                ),
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "Search for hotels",
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 350, top: 10),
          child: Text(
            "Popular Hotels",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
        CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                width: 250,
                child: Card(
                  shadowColor: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8.0),
                    ),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                                topRight: Radius.circular(8),
                                topLeft: Radius.circular(8)),
                            image: DecorationImage(
                              image: AssetImage(
                                images[index],
                              ),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              names[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 28),
                            ),
                            Text(
                              caption[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, left: 10, right: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    price[index],
                                    style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.blue,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Text(
                                      ratings[index],
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.blue,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.blue,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            options: CarouselOptions(
              reverse: false,
              scrollDirection: Axis.horizontal,
              height: 290,
              enlargeCenterPage: false,
              autoPlay: true,
              aspectRatio: 16 / 5,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 300),
              viewportFraction: .6,
            ))
      ],
    )
        // ],
        // ),
        // ),
        // ],
        // ),
        );
  }
}
