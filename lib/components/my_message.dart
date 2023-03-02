import 'package:flutter/material.dart';

Widget myMessage(message, {time = ''}) {
  return Align(
    alignment: Alignment.topRight,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 225, 218, 218),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
              )),
          margin: const EdgeInsets.only(top: 10, right: 25, left: 90),
          child: Container(
              margin: const EdgeInsets.all(15),
              child: Text(
                message,
              )),
        ),
        time != ''
            ? Container(
                margin: const EdgeInsets.only(top: 10, right: 25),
                child: Text(
                  time,
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ))
            : Container(),
      ],
    ),
  );
}
