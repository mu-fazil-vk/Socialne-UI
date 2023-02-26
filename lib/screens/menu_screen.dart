import 'package:socialne/controller/nav_controller.dart';
import 'package:socialne/screens/account_screen.dart';
import 'package:socialne/screens/home_screen.dart';
import 'package:socialne/screens/search_screen.dart';
import 'package:socialne/screens/video_call_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int pageIndex = 0;

  final pages = [
    const HomeScreen(),
    const SearchScreen(),
    const VideoCallScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pageIndex == 3 ? Container() : pages[pageIndex],
      bottomNavigationBar: navScroll
          ? Container()
          : Container(
              margin: const EdgeInsets.all(15),
              height: 80,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 0;
                        });
                      },
                      icon: pageIndex == 0
                          ? SvgPicture.asset(
                              "assets/icons/home-filled.svg",
                              width: 25,
                              height: 25,
                            )
                          : SvgPicture.asset(
                              "assets/icons/home.svg",
                              width: 25,
                              height: 25,
                            )),
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 1;
                        });
                      },
                      icon: pageIndex == 1
                          ? SvgPicture.asset(
                              "assets/icons/search-filled.svg",
                              width: 25,
                              height: 25,
                            )
                          : SvgPicture.asset(
                              "assets/icons/search.svg",
                              width: 25,
                              height: 25,
                            )),
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 2;
                        });
                      },
                      icon: pageIndex == 2
                          ? SvgPicture.asset(
                              "assets/icons/video-filled.svg",
                              width: 25,
                              height: 25,
                            )
                          : SvgPicture.asset(
                              "assets/icons/video.svg",
                              width: 25,
                              height: 25,
                            )),
                  IconButton(
                      enableFeedback: false,
                      onPressed: () {
                        setState(() {
                          pageIndex = 3;
                        });
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (builder) => const AccountScreen()));
                      },
                      icon: pageIndex == 3
                          ? SvgPicture.asset(
                              "assets/icons/account-filled.svg",
                              width: 25,
                              height: 25,
                            )
                          : SvgPicture.asset(
                              "assets/icons/account.svg",
                              width: 25,
                              height: 25,
                            )),
                ],
              ),
            ),
    );
  }
}
