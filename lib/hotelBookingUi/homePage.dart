import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HotelHomePage extends StatefulWidget {
  const HotelHomePage({super.key});

  @override
  State<HotelHomePage> createState() => _HotelHomePageState();
}

class _HotelHomePageState extends State<HotelHomePage> {
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  "Hello @ Nithin",
                  style: TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 3),
                child: Text(
                  "Find your favourite hotel",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  child: const Image(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT638RRocK6oR5OAFFoE4MovrrEBUcn8Yrb_w&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
          backgroundColor: Colors.white,
          shadowColor: Colors.white54,
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    children: [
                      Form(
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 25, left: 20, right: 20),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.white),
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      CarouselSlider.builder(
                        itemCount: images.length,
                        itemBuilder:
                            (BuildContext context, int index, int realIndex) {
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          names[index],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 28),
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
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 80),
                                                child: Text(
                                                  ratings[index],
                                                  style: const TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.blue,
                                                      fontWeight:
                                                          FontWeight.w500),
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
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 300),
                          viewportFraction: .6,
                        ),
                      ),
                      hotellist(),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class hotellist extends StatelessWidget {
  List images = [
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
    'images/apples.jpg',
  ];
  List names = [
    "Four Points ",
    "Le Meridian ",
    "Kochi Merriott ",
    "Hill Palace Hotel & Spa ",
    "Grand Haytt ",
    "Hotel Star",
    "Hotel North Seven",
    "Radisson Blu",
    "Riverside",
    "Taj Malabar"
  ];
  List caption = [
    'Pink haze, perfect days.',
    'The category is: resort life.',
    'Catch flights, not feelings.',
    'Vacation mode :on.',
    'The best view in the world',
    'Its a home away from home.',
    'We are another home for you.',
    'The best view in the city.',
    'Impeccable service.',
    'Rediscover life.',
  ];
  List<String> price = [
    "\$71/night",
    "\$69/night",
    "\$87/night",
    "\$90/night",
    "\$80/night",
    "\$77/night",
    "\$89/night",
    "\$67/night",
    "\$85/night",
    "\$70/night",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 5,
      width: MediaQuery.of(context).size.width * 3,
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: images.length,
        itemBuilder: (context, index) {
          return Container(
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Container(
                    height: 110,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(15),
                            topLeft: Radius.circular(15)),
                        image: DecorationImage(
                            image: AssetImage(
                              images[index],
                            ),
                            fit: BoxFit.fill)),
                  ),
                ),
                Container(
                  //color: Colors.red,
                  height: 120,
                  // width: 200,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          names[index],
                          style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                      ),
                      Text(
                        caption[index],
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            price[index],
                            style: TextStyle(fontSize: 15, color: Colors.blue),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.car_crash,
                                color: Colors.blue,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.emoji_food_beverage_rounded,
                                color: Colors.blue,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.wifi,
                                color: Colors.blue,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue),
                        onPressed: () {},
                        child: Text("Book")),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
