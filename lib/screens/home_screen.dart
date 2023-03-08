import 'package:socialne/clips/oval_top_border.dart';
import 'package:socialne/components/posts.dart';
import 'package:socialne/components/stories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ScrollController _controller = ScrollController();
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Socialne',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/notification.svg",
                  width: 30,
                  height: 30,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  "assets/icons/message.svg",
                  width: 32,
                  height: 32,
                ),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        controller: _controller,
        child: Column(
          children: [
            Column(
              children: [
                SizedBox(
                  width: screenWidth,
                  height: 130,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return myStories('assets/mystory.jpg', 'Rohith');
                      } else {
                        return stories('assets/story.jpg', 'Aleena');
                      }
                    },
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            ClipPath(
              clipper: OvalTopBorderClipper(),
              child: Container(
                width: screenWidth,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SvgPicture.asset(
                  "assets/icons/dash.svg",
                  width: 100,
                  height: 50,
                  color: const Color.fromARGB(255, 222, 221, 221),
                ),
                    Padding(
                      padding: const EdgeInsets.only(top: 0, right: 8, left: 8),
                      child:SizedBox(
                              height: 500,
                              child: ListView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return posts('assets/story.jpg', 'aleena', true,
                                      'assets/mystory.jpg', 'And we end with');
                                },
                                itemCount: 5,
                              )),),
                  ],
                ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}