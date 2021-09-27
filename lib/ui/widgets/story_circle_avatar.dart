import 'package:flutter/material.dart';

class StoryCircleAvatar extends StatelessWidget {
  final ImageProvider image;
  StoryCircleAvatar({required this.image});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: 35,
        backgroundColor: Theme.of(context).primaryColor,
        child: CircleAvatar(
          radius: 32,
          backgroundImage: image,
        ));
  }
}
