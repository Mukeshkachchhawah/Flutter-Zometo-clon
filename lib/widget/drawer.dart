import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MenuBar extends StatefulWidget {
  const MenuBar({Key? key}) : super(key: key);

  @override
  State<MenuBar> createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 20, right: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.close)),
              SizedBox(
                height: 10,
              ),
              Card(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        //                   boxShadow: BoxShadow({
                        //   Color color = const Color(0xFF000000),
                        //   Offset offset = Offset.zero,
                        //   double blurRadius = 0.0,
                        //   double spreadRadius = 0.0,
                        //   BlurStyle blurStyle = BlurStyle.normal,
                        // })
                        //  color: Color.fromARGB(255, 114, 108, 234),
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Your Profile",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Log in or sign up to view your complete profile",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40,
                            width: 300,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 176, 168, 167),
                                // border: BorderRadius.circular(radius)
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                              child: Text(
                                "Continue",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 70,
                          width: 80,
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.favorite_border),
                              ),
                              Text("Likes")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 70,
                          width: 80,
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.payment),
                              ),
                              Text("Payment")
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: 70,
                          width: 80,
                          // color: Colors.red,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.settings),
                              ),
                              Text("Settings")
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "Food Oreders",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Your orders"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.note_add_rounded),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Fovorite orders"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.favorite),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Address book"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.menu_book_sharp),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Online ordering help"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.mark_as_unread_sharp),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 10),
                      child: Text(
                        "More Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("About"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.read_more_rounded),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Send feedback"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.feedback),
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Report a safety emergency"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.report),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    ListTile(
                      onTap: () {},
                      title: Text("Log Out"),
                      trailing: Icon(Icons.arrow_forward),
                      leading: Icon(Icons.logout),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
