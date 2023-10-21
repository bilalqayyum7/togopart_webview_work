import 'dart:html';
import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:togopart_project/custom_secreen.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyHomeSecreen extends StatefulWidget {
  const MyHomeSecreen({super.key});

  @override
  State<MyHomeSecreen> createState() => _MyHomeSecreenState();
}

class _MyHomeSecreenState extends State<MyHomeSecreen> {
  int _currentIndex = 0;
  late WebViewController _controller;
  String _value = '0';
  final List<String> _webViews = [
    "https://www.togoparts.com/home",
    "https://www.togoparts.com/bikeprofile/trides",
    "https://www.togoparts.com/marketplace/browse",
    "https://www.togoparts.com/marketplace/create/",
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = WebViewController();
    _controller.setJavaScriptMode(JavaScriptMode.unrestricted);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            actions: [
              if (_currentIndex == 0)
                // Show submit button on the post
                IconButton(
                  onPressed: () {
                    showMenuPopup();
                  },
                  icon: Image.asset('assets/icons/downArrow_icon@3x.png'),
                ),
              if (_currentIndex == 3)
                IconButton(
                  onPressed: () {
                    showMenuMarket();
                  },
                  icon: Image.asset('assets/icons/downArrow_icon@3x.png'),
                ),
              IconButton(
                onPressed: () {},
                icon: Image.asset("assets/icons/inbox_icon_inactive@3x.png"),
              ),
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                    "assets/icons/notification_icon_inactive@3x.png"),
              ),
              PopupMenuButton<int>(
                  onSelected: (item) => onSelected(context, item),
                  itemBuilder: (context) => [
                        PopupMenuItem<int>(
                            value: 0,
                            child: Row(
                              children: [
                                ImageIcon(AssetImage(
                                    "assets/more_option/settings_icon@3x.png")),
                                Text("Settingd"),
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 1,
                            child: Row(
                              children: [
                                ImageIcon(AssetImage(
                                    "assets/more_option/country_flag@3x.png")),
                                Text("Switch Country"),
                              ],
                            )),
                        PopupMenuItem<int>(
                            value: 2,
                            child: Row(
                              children: [
                                ImageIcon(AssetImage(
                                    "assets/more_option/login_icon@3x.png")),
                                Text("Logout"),
                              ],
                            )),
                      ]),
            ],
          ),
          body: WebViewWidget(
            controller: _controller,
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.black,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
                _controller.loadRequest(Uri.parse(_webViews[index]));
              });
            },
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                        "assets/bottom_bar/challenges_icon_active@3x.png"),
                  ),
                  label: "CHALLENGE",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage(
                        "assets/bottom_bar/leaderboard_icon_active@3x.png"),
                  ),
                  label: "BOARD",
                  backgroundColor: Colors.black),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/bottom_bar/profile_icon_active@3x.png"),
                ),
                label: "ME",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                      "assets/bottom_bar/marketplace_icon_active@3x.png"),
                ),
                label: "MARKET",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage(
                    "assets/bottom_bar/more_icon_active@3x.png",
                  ),
                ),
                label: "MORE",
              ),
            ],
          )),
    );
  }

  void onSelected(BuildContext context, int item) {
    switch (item) {
      case 0:
        print("Click Setting");
        //Navigator.of(context).push(MaterialPageRoute(builder: (context) = name));
        break;
      case 1:
        print("Switch to country");
        break;
    }
  }
}
void showMenuPopup() {
    items: [
      PopupMenuItem(
          child: Text("My Challenges")),
      PopupMenuItem(
          child: Text("Current Challenges")),
      PopupMenuItem(
          child: Text("Past Challenges")),
    ];
}
void showMenuMarket(){
  items: [
    PopupMenuItem(
        child: Text("Marketplace")),
    PopupMenuItem(
        child: Text("Bikeshops")),

  ];
}
