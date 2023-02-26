import 'package:socialne/components/post_clipper.dart';
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
            ClipPath(
              clipper: PostClipper(),
              child: Column(
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
            ),
            Container(
              width: screenWidth,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                    height: 500,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return posts('assets/story.jpg', 'aleena', true,
                            'assets/mystory.jpg', 'And we end with');
                      },
                      itemCount: 2,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 30);
    path.lineTo(size.width, 0);
    // this draws the line from current point to the right top position of the widget
    path.close(); // this closes the loop from current position to the starting point of widget
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
