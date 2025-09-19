import 'dart:ui';

import 'package:flutter/material.dart';

class StoryModel {
  StoryModel({this.userId, this.avatar, this.label, this.cards});

  int? userId;
  Widget? avatar;
  Text? label;
  List<StoryCardModel>? cards;
}

class StoryCardModel {
  StoryCardModel({
    this.visited = false,
    this.duration = const Duration(seconds: 2),
    this.color = const Color(0xff333333),
    this.childOverlay,
    this.child,
  });

  bool visited;
  Duration duration;
  Color color;
  Widget? childOverlay;
  Widget? child;
}

List<StoryModel> getStories() {
  return [
    StoryModel(
      avatar: Image.network("https://picsum.photos/200"),
      label: const Text("UserName"),
      cards: [
        StoryCardModel(
          child: const Center(
            child: Image(
              image: NetworkImage("https://picsum.photos/200/300"),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    ),
  ];
}
