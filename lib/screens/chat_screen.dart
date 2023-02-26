import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'menu_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = 'aleena';
    bool isVerified = true;
    String name = 'Niki';
    String about = """🎸 Musician
  🎹 "Nicole" - the album-OUT NOW""";
    var profileImg = "assets/story.jpg";
    String postCount = "319";
    String followersCount = "2.1M";
    String followingCount = "576";

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: SvgPicture.asset(
            "assets/icons/back.svg",
            width: 35,
            height: 35,
          ),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                        builder: (builder) => MenuScreen()));
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(userName,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            const SizedBox(
              width: 10,
            ),
            isVerified
                ? const Icon(
                    Icons.verified,
                    color: Colors.blue,
                  )
                : Container()
          ],
        ),
        actions: [
          IconButton(
            //iconSize: ,
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/more.svg",
              color: Colors.white,
              height: 7,
              width: 7,
            ),
          )
        ],
      ),
    );
  }
}
