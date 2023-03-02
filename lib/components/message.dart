import 'package:flutter/material.dart';

Widget message(message, {String time = ''}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        decoration: const BoxDecoration(
            color: Color.fromARGB(166, 88, 139, 226),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
              bottomRight: Radius.circular(15),
            )),
        margin: const EdgeInsets.only(top: 10, left: 30, right: 90),
        child: Container(
            margin: const EdgeInsets.all(15),
            child: Text(
              message,
            )),
      ),
      time != ''
          ? Container(
              margin: const EdgeInsets.only(top: 10, left: 30),
              child: Text(
                time,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ))
          : Container(),
    ],
  );
}
