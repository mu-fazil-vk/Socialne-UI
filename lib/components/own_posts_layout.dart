import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:transparent_image/transparent_image.dart';

Widget masonryLayout(BuildContext context) {
  return MasonryGridView.builder(
    gridDelegate: const SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    mainAxisSpacing: 18,
    crossAxisSpacing: 16,
    itemCount: 10,
    itemBuilder: (context, index) {
      return ClipRRect(
        borderRadius: const BorderRadius.all(
            Radius.circular(20)),
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: "https://source.unsplash.com/random?sig=$index",
          fit: BoxFit.cover,
        ),
      );
    },
  );
}
