import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';

import '../util/online_pic_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              diverLineText("  WHAT'S ON YOUR MIND ?  "),
              titleLine("Top brands for you"),
              roundImageList(),
              titleLine("Eat what make you happy"),
              itemsList(size),
              SizedBox(
                height: 20,
              ),
              TextButton(
                onPressed: () {},
                child: const Center(
                    child: Text(
                  "See more >",
                  style: TextStyle(color: Colors.black),
                )),
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6.0),
                          side: const BorderSide(color: Colors.grey))),
                ),
              ),
              //   roundImageList2(),
              titleLine("180 restaurants around you"),
            ]),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return foodCard(index);
              },
              childCount: 10,
            ),
          )
        ],
      ),
    );
  }

  diverLineText(String text) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Divider(),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Text(
              text,
              style: TextStyle(
                color: Color.fromARGB(255, 21, 19, 19),
              ),
            ),
          )
        ],
      ),
    );
  }

  titleLine(String s) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20 / 2),
      child: Text(
        s,
        style: TextStyle(
            color: Color.fromARGB(255, 241, 0, 0),
            fontSize: 20,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget roundImageText() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 120,
            width: 100,
            child: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/demo/logomc.png"),
                  radius: 60,
                ),
                Positioned(
                    bottom: 0, left: 0, right: 0, child: offerBox("40% OFF"))
              ],
            ),
          ),
          Text(
            "McDonald's",
            style: TextStyle(color: Colors.black),
          ),
          SizedBox(
            height: 4,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                "assets/images/timer.png",
                height: 12,
                width: 12,
              ),
              Text(" 47 min", style: TextStyle(color: Colors.grey))
            ],
          )
        ],
      ),
    );
  }

  roundImageList() {
    return SizedBox(
      height: 170,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 20,
          itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(right: 20),
                child: roundImageText(),
              )),
    );
  }

  Widget itemsList(size) {
    return Container(
      height: size.height / 3,
      width: size.width,
      child: GridView.builder(
          itemCount: foodItemList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, mainAxisSpacing: 20),
          itemBuilder: (context, index) {
            return Container(
              height: size.height / 3,
              width: size.width / 5,
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      //   Navigator.pop(context);
                    },
                    child: Container(
                      height: size.height / 10,
                      width: size.height / 10,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            foodItemList[index].imageUrl,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Text(
                    foodItemList[index].name,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }

  // Widget roundImageTex2() {
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 20 / 2, horizontal: 20 / 2),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         SizedBox(
  //           height: 80,
  //           width: 65,
  //           child: CircleAvatar(
  //             backgroundImage: NetworkImage(foodItemList.toString()),
  //             radius: 65,
  //           ),
  //         ),
  //         Text(
  //           "Pizza",
  //           style: TextStyle(color: Colors.black),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget offerBox(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20 / 2),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(6)),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child: Center(
            child: Text(
              text,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
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
                              //  color: Color.fromARGB(255, 125, 160, 126)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Image.network(
                                    restaurantList[index].timer,
                                    color: Colors.black,
                                    height: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    restaurantList[index].minats,
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
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
