import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget posts(profileImg, String name, bool isVerified, postImg, description) {
  Image img = Image(
    image: AssetImage(postImg),
    fit: BoxFit.cover,
  );
  return Padding(
    padding: const EdgeInsets.all(10),
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 18,
                  backgroundImage: AssetImage(profileImg),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(name,
                    style: const TextStyle(
                        color: Colors.black,
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
            IconButton(
                onPressed: () {},
                icon: SvgPicture.asset("assets/icons/more.svg"))
          ],
        ),
        Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(30)),
              height: 400,
              width: 400,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: img
                ),
            ),
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/comment.svg")),
                    IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset("assets/icons/share.svg"))
                  ],
                ),
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset("assets/icons/bookmark.svg")),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 18, left: 18),
              child: Row(
                children: [
                  Text(name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Text(
                      description,
                      style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 15,),
                      overflow: TextOverflow.clip,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    ),
  );
}
