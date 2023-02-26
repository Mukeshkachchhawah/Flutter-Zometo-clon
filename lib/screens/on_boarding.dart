import 'package:flutter/material.dart';

import 'deshboard.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            topImage(),
            SizedBox(
              height: 20,
            ),
            Text(
              "India's #1 Food Delivery\nand Dining App",
              style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            diverLineText("Log in or sign up"),
            mobileTextField(),
            SizedBox(
              height: 20,
            ),
            continuneButton(),
            SizedBox(
              height: 20,
            ),
            diverLineText("or"),
            socialButton(),
            SizedBox(
              height: 20,
            ),
            bottomLines()
          ],
        ),
      ),
    );
  }

  Widget topImage() {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: 
          AssetImage(
            "assets/images/bg.webp",
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: ListTile(
          leading: topButtons("🌎 English"),
          trailing: topButtons("Skip"),
        ),
      ),
    );
  }

  Widget diverLineText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20 / 2),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Divider(),
          Container(
            color: Theme.of(context).scaffoldBackgroundColor,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget topButtons(String text) {
    return TextButton(
      child: Text(
        text,
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: const BorderSide(color: Colors.transparent))),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.black.withOpacity(0.5))),
      onPressed: () {},
    );
  }

  Widget mobileTextField() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                  // hintText: "Enter Phone Number",
                  contentPadding: const EdgeInsets.all(20),
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  filled: true,
                  // prefixText: "+91",
                  // prefix: Text("+91"),
                  enabled: false,
                  prefixIcon: SizedBox(
                      width: 20,
                      child: Center(
                        child: Image.asset(
                          "assets/images/india.png",
                          height: 20,
                        ),
                      )),

                  prefixStyle: TextStyle(color: Color.fromARGB(255, 1, 0, 1)),
                  hintStyle: TextStyle(
                      color: Color.fromARGB(255, 234, 0, 0).withOpacity(0.6)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 76, 0, 255).withOpacity(0.6)),
                  ),
                  // enabledBorder: OutlineInputBorder(
                  //   borderRadius: BorderRadius.circular(10.0),
                  //   borderSide: BorderSide(
                  //       color: Color.fromARGB(255, 163, 0, 0).withOpacity(0.6)),
                  // ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 46, 39, 39).withOpacity(0.6)),
                  ),
                ),
              )),
          const SizedBox(
            width: 20 / 2,
          ),
          Expanded(
              flex: 8,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Enter Phone Number",
                  contentPadding: const EdgeInsets.all(20),
                  fillColor: Theme.of(context).scaffoldBackgroundColor,
                  filled: true,
                  // prefixText: "+91",
                  // prefix: Text("+91"),
                  prefixIcon: const SizedBox(
                      width: 20, child: Center(child: Text("+91"))),
                  prefixStyle: TextStyle(color: Colors.black),
                  hintStyle: TextStyle(color: Colors.grey.withOpacity(0.6)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(color: Colors.grey.withOpacity(0.6)),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  Widget continuneButton() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
      child: TextButton(
        child: Container(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Continue",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: const BorderSide(color: Colors.transparent))),
            backgroundColor:
                MaterialStateProperty.all<Color>(Colors.red.shade400)),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Dashboard(),
              ));
        },
      ),
    );
  }

  Widget socialButton() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20 / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("assets/images/google.png"),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(Icons.more_horiz),
          ),
        ],
      ),
    );
  }

  Widget bottomLines() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "By continuing, you agree to our\nTerms of service privacy policy Content Policy",
        style: TextStyle(color: Colors.grey),
        textAlign: TextAlign.center,
      ),
    );
  }
}
