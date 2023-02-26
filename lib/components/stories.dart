import 'package:flutter/material.dart';

Widget stories(profileImg, name) {
  return Padding(
    padding: const EdgeInsets.only(left: 8, right: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(profileImg),
        ),
        const SizedBox(height: 10,),
        Center(child: Text(name, style: const TextStyle(color: Colors.white)))
      ],
    ),
  );
}

Widget myStories(profileImg, name) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(profileImg),
        ),
        const SizedBox(height: 10,),
        Center(child: Text(name, style: const TextStyle(color: Colors.white),))
      ],
    ),
  );
}
