import 'package:flutter/material.dart';
import 'package:flutter_zometo_clon/screens/dining.dart';
import 'package:flutter_zometo_clon/screens/home_screen.dart';
import 'package:flutter_zometo_clon/widget/drawer.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int currentIndex = 0;

  List<Widget> tabViewScreen = [const HomeScreen(), const DiningScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: tabView(),
      appBar: appBarView(),
      body: tabViewScreen[currentIndex],
    );
  }

  void changeTab(int i) {
    currentIndex = i;
    setState(() {});
  }

// add in bottomNavigationBar
  tabView() {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedLabelStyle: TextStyle(color: Colors.red),
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.red,
      onTap: (i) {
        changeTab(i);
      },
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/scooter.png",
            color: Colors.red,
            height: 20,
          ),
          label: "Home",
          // activeIcon: Image.asset(
          //   "assets/images/scooter.png",
          //   height: 20,
          //   color: Colors.red,
          // ),
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            "assets/images/cutlery.png",
            height: 20,
          ),
          // activeIcon: Image.asset(
          //   "assets/images/cutlery.png",
          //   height: 20,
          //   color: Colors.red,
          // ),
          label: "Dining",
        ),
      ],
    );
  }

  Widget topButtons(String text) {
    return Center(
      child: SizedBox(
        height: 30,
        child: TextButton(
          child: Text(
            text,
            style: TextStyle(color: Colors.black.withOpacity(0.7)),
          ),
          style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6.0),
                    side: const BorderSide(color: Colors.grey))),
          ),
          onPressed: () {},
        ),
      ),
    );
  }

  appBarView() {
    return AppBar(
      automaticallyImplyLeading: false,
      elevation: 0,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      title: Row(
        children: [
          Image.asset(
            "assets/images/location.png",
            height: 20,
            color: Colors.pink,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "7WWJ 390\nJodhpur",
                style: TextStyle(color: Colors.pink),
              ),
            ],
          )
        ],
      ),
      actions: [
        topButtons("🌎English"),
        IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MenuBar()));
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            ))
      ],
      // toolbarHeight: 120,

      bottom: PreferredSize(
        child: Column(
          children: [
            searchField(),
            categoryList(),
          ],
        ),
        preferredSize: Size(100, 120),
      ),
    );
  }

  searchField() {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          decoration: InputDecoration(
            hintText: "Restaurant name or a dish...",
            contentPadding: const EdgeInsets.all(20),
            fillColor: Theme.of(context).scaffoldBackgroundColor,
            filled: true,
            // prefixText: "+91",
            // prefix: Text("+91"),

            prefixIcon: SizedBox(
                width: 20,
                child: Center(
                    child: Icon(
                  Icons.search,
                  color: Colors.pink,
                ))),

            prefixStyle: TextStyle(color: Colors.black),
            hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.0),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
            ),
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14.0),
              borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
            ),
            suffixIcon: SizedBox(
                width: 20,
                child: Center(
                    child: Icon(
                  Icons.mic,
                  color: Colors.pink,
                ))),
          ),
        ));
  }

  Widget categoryList() {
    List string = [
      "Fasted Delivery",
      "Pure veg",
      "Nearest",
      "Rating 40+",
      "Bool table",
      "Open noew"
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20 / 2),
      child: SizedBox(
        height: 40,
        child: ListView.builder(
            itemCount: string.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(right: 20 / 2),
                  child: topButtons(string[index]),
                )),
      ),
    );
  }
}
