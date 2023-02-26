import 'package:flutter/material.dart';
import 'package:flutter_zometo_clon/screens/home_screen.dart';
import 'package:flutter_zometo_clon/util/online_pic_home.dart';

import '../util/dining_online_data.dart';

class DiningScreen extends StatefulWidget {
  const DiningScreen({Key? key}) : super(key: key);

  @override
  _DiningScreenState createState() => _DiningScreenState();
}

class _DiningScreenState extends State<DiningScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            add(),
          ]),
        ),
        SliverList(
          delegate: SliverChildListDelegate([
            titleLine("Curated collections"),
          ]),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 180,
            child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => locationCard(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 180,
            child: GridView.builder(
              itemCount: foodItemListdinig.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, mainAxisSpacing: 20),
              itemBuilder: (BuildContext context, int index) =>
                  itemsCard(index),
            ),
            // ListView.builder(
            //   itemCount: foodItemListdinig.length,
            //   scrollDirection: Axis.horizontal,
            //   itemBuilder: (context, index) => itemsCard(index),
            // ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: foodCard(index),
              );
            },
            childCount: 10,
          ),
        )
      ],
    );
  }

  Widget add() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image.asset("assets/images/demo/offer.jpg"),
        ),
      ),
    );
  }

  Widget locationCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
            width: 150,
            height: 180,
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/demo/fort.jpg",
                  height: 180,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  // color: Colors.black,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 200,
                        offset: Offset(0, 150),
                        spreadRadius: 10)
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Best of Jodhpur",
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "9 places",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  Widget itemsCard(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Container(
            width: 200,
            height: 200,
            child: Stack(
              children: [
                Image.network(
                  foodItemListdinig[index].imageUrl,
                  height: 250,
                  fit: BoxFit.cover,
                ),
                Container(
                  width: double.infinity,
                  // color: Colors.black,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        blurRadius: 200,
                        offset: Offset(0, 150),
                        spreadRadius: 10)
                  ]),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      // mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          foodItemListdinig[index].name,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Text(
                          "9 places",
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }

  // Widget itemsList(size) {
  //   return Container(
  //     height: size.height / 3,
  //     width: size.width,
  //     child: GridView.builder(
  //         itemCount: 18,
  //         // itemCount: foodItemList.length,
  //         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  //             crossAxisCount: 3, mainAxisSpacing: 20),
  //         itemBuilder: (context, index) {
  //           return Container(
  //             height: size.height / 3,
  //             width: size.width / 5,
  //             child: Column(
  //               children: [
  //                 GestureDetector(
  //                   onTap: () {
  //                     //   Navigator.pop(context);
  //                   },
  //                   child: Container(
  //                     height: size.height / 10,
  //                     width: size.height / 10,
  //                     decoration: BoxDecoration(
  //                       image: DecorationImage(
  //                         image: NetworkImage(
  //                           foodItemList[index].imageUrl,
  //                         ),
  //                       ),
  //                     ),
  //                   ),
  //                 ),
  //                 Text(
  //                   foodItemList[index].name,
  //                   style: TextStyle(
  //                     fontWeight: FontWeight.w500,
  //                   ),
  //                 ),
  //               ],
  //             ),
  //           );
  //         }),
  //   );
  // }

  Widget roundImageTex2() {
    var index;
    var foodItemListdinig;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20 / 2, horizontal: 20 / 2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              height: 65,
              width: 65,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(blurRadius: 2, color: Colors.grey.shade400)
                  ],
                  // border: Border.all(
                  //   color: Colors.grey,
                  //   width: 1,
                  // ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.network(foodItemListdinig[index].imageUrl),
                ),
              )),
          SizedBox(
            height: 8,
          ),
          Text(
            foodItemListdinig[index].name,
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }

  titleLine(String s) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20 / 2, horizontal: 20),
      child: Text(
        s,
        style: TextStyle(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget foodCard(
    var index,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20 / 2),
      child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [BoxShadow()]),
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    // height: 130,
                    // width: MediaQuery.of(context).size.width,
                    child: Image.network(
                      restaurantList[index].imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            restaurantList[index].title,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.green),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "3.3",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Image.asset(
                                    "assets/images/star.png",
                                    color: Colors.white,
                                    height: 12,
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      subtitle: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            restaurantList[index].locations,
                          ),
                          Text(restaurantList[index].price)
                        ],
                      )),
                ],
              ),
              Container(
                height: 20,
                color: Colors.green.withOpacity(0.9),
                child: Center(
                  child: Text(
                    "PURE VEG RESTAURANT",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                  right: 20,
                  top: 20,
                  child: Padding(
                      padding: EdgeInsets.all(8),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite,
                            size: 30,
                            color: Colors.red,
                          ))))
            ],
          )),
    );
  }
}
