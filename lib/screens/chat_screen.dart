import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:socialne/components/message.dart';
import 'package:socialne/components/my_message.dart';

import 'menu_screen.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String userName = 'nikizefanya';
    bool isVerified = true;
    var profileImg = "assets/story.jpg";

    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          leading: IconButton(
            icon: SvgPicture.asset(
              "assets/icons/back.svg",
              width: 30,
              height: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (builder) => const MenuScreen()));
            },
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 23,
                backgroundImage: AssetImage(profileImg),
              ),
              const SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(userName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                          SizedBox(height: 5,),
                          Text('Online',
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.w500)),

                ],
              ),
              const SizedBox(
                width: 10,
              ),
              if (isVerified) const Icon(
                      Icons.verified,
                      color: Colors.blue,
                    ),
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
        body: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 240,
              color: Colors.white,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: Container(
                      margin: const EdgeInsets.only(top: 20),
                      height: 30,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Center(
                          child: Text(
                        'Today',
                        style: TextStyle(color: Colors.white),
                      )),
                    )),
                    message('Hi, Brian 👋!'),
                    message("Can you send presentation file from Mr. Alex, I lost it and can't find that 😥.", time: "4:40 pm"),
                    myMessage("Yoo, sure Niki"),
                    myMessage("Let me find that presentation at my laptop, give me a second!", time: "4:42 pm"),
                    message("Yes sure, Take your Time Brian", time: "4:43 pm"),
                    myMessage("History of Animal Biolo...", time: "4:50 pm"),
                    message("Tank you for helping me! 🔥 You save my life hahaha!", time: "4:50 pm"),
                    myMessage("Yoo, sure Niki 👍", time: "4:51 pm")
                  ],
                ),
              ),
            ),

            //typing...
            Positioned(
                child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Container(
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(60)),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          icon: Container(
                              margin: const EdgeInsets.only(left: 5),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(120, 158, 158, 158),
                                  borderRadius: BorderRadius.circular(60)),
                              child: const Icon(
                                Icons.link,
                                color: Colors.white,
                              )),
                              prefixText: '|  ',
                              prefixStyle:  const TextStyle(
                                color: Colors.grey,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                              ),
                              hintText: 'Type a message...',
                              hintStyle: const TextStyle(
                                color: Colors.grey
                              ),
                              suffixIcon: Container(
                              margin: const EdgeInsets.only(right: 5),
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  color: const Color.fromARGB(255, 19, 105, 234),
                                  borderRadius: BorderRadius.circular(60)),
                              child: IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/share.svg", color: Colors.white,)),
                              ),
                    ),
                  ),
                ),
              ),
            )),
            )
          ],
        ));
  }
}
