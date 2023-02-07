import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.greenAccent,
            title: const Text(
              "FARMERS FRESH ZONE",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            floating: true,
            pinned: true,
            actions: const [
              Icon(
                Icons.location_on_outlined,
                size: 20,
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Center(
                  child: Text(
                    "Kochi",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.greenAccent,
              elevation: 0,
              title: Container(
                color: Colors.white,
                width: double.infinity,
                height: 40,
                child: const Center(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for vegetables and fruits..",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                          child: Text(
                        "VEGETABLES",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )),
                    ),
                    Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                          child: Text(
                        "FRUIDS",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )),
                    ),
                    Container(
                      height: 35,
                      width: 90,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                          child: Text(
                        "EXOTIC",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )),
                    ),
                    Container(
                      height: 35,
                      width: 120,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.greenAccent,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                      ),
                      child: const Center(
                          child: Text(
                        "FRESH CUTS",
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                      )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                    items: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/greens.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/oranges.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/apples.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/blacks.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 200,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/carrets.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/reds.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ],
                    options: CarouselOptions(
                      aspectRatio: 16 / 7,
                      viewportFraction: 0.9,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                    )),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.grey)),
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            SizedBox(
                              height: 5,
                            ),
                            Icon(
                              Icons.lock_clock,
                              size: 40,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "30 MINS POLICY",
                              style: TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 5,
                            ),
                            Icon(
                              Icons.mobile_friendly,
                              size: 40,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("TRACEABILITY",
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                        Column(
                          children: const [
                            SizedBox(
                              height: 5,
                            ),
                            Icon(
                              Icons.source,
                              size: 40,
                              color: Colors.green,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("LOCAL SOURCING",
                                style: TextStyle(fontSize: 12)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                VegGrids(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.green,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                color: Colors.green,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class VegGrids extends StatelessWidget {
  List<String> images = [
    "images/greens.jpg",
    "images/apples.jpg",
    "images/blacks.jpg",
    "images/carrets.jpg",
    "images/oranges.jpg",
    "images/reds.jpg",
  ];

  List<String> names = [
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh cut",
    "Nutrition Charged",
    "Packed Flavours"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 5),
        itemCount: images.length,
        itemBuilder: (BuildContext, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 90,
                width: 120,
                // height: MediaQuery.of(context).size.height / 5,
                //width: MediaQuery.of(context).size.width * .3,
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 20.0,
                    ),
                  ],
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(images[index])),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(names[index]),
            ],
          );
        });
  }
}
