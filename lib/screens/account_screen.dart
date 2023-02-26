import 'package:socialne/constants/constant.dart';
import 'package:socialne/screens/chat_screen.dart';
import 'package:socialne/screens/home_screen.dart';
import 'package:socialne/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  String userName = 'aleena';
  bool isVerified = true;
  String name = 'Niki';
  String about = """🎸 Musician
  🎹 "Nicole" - the album-OUT NOW""";
  var profileImg = "assets/story.jpg";
  String postCount = "319";
  String followersCount = "2.1M";
  String followingCount = "576";

  @override
  Widget build(BuildContext context) {
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
            Navigator.of(context).push(
                MaterialPageRoute(builder: (builder) => const MenuScreen()));
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
      body: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  SizedBox(
                    height: 100,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(profileImg),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 130,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                              Flexible(
                                child: Text(about,
                                    style: const TextStyle(
                                      height: 1.5,
                                      overflow: TextOverflow.ellipsis,
                                      color: Colors.white,
                                      fontSize: 16,
                                    )),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // follow info
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(postCount,
                          style: const TextStyle(
                              height: 1.5,
                              overflow: TextOverflow.fade,
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      const Text('Posts',
                          style: TextStyle(
                              height: 1.5,
                              overflow: TextOverflow.fade,
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(followersCount,
                          style: const TextStyle(
                              height: 1.5,
                              overflow: TextOverflow.fade,
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      const Text('Followers',
                          style: TextStyle(
                              height: 1.5,
                              overflow: TextOverflow.fade,
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(followingCount,
                          style: const TextStyle(
                              height: 1.5,
                              overflow: TextOverflow.fade,
                              color: Colors.white,
                              fontSize: 22,
                              fontWeight: FontWeight.bold)),
                      const Text('Following',
                          style: TextStyle(
                              height: 1.5,
                              overflow: TextOverflow.fade,
                              color: Colors.white70,
                              fontSize: 16,
                              fontWeight: FontWeight.w300)),
                    ],
                  ),
                ],
              ),
            ),
            //buttons
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (builder) => ChatScreen()));
                    },
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: greyColor),
                      child: const Center(
                        child: Text('Message',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ),
                  InkWell(
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: greyColor),
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Following',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold)),
                            SvgPicture.asset(
                              "assets/icons/down-arrow.svg",
                              height: 30,
                              width: 30,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Colors.white),
              child: Column(
                children: [
                  SvgPicture.asset(
                    "assets/icons/dash.svg",
                    width: 100,
                    height: 50,
                    color: const Color.fromARGB(255, 222, 221, 221),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
