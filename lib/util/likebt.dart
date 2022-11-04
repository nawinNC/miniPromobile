import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class likeBT extends StatefulWidget {
  const likeBT({Key? key}) : super(key: key);

  @override
  State<likeBT> createState() => _likeBTState();
}

class _likeBTState extends State<likeBT> {
  bool isLiked = false;
  int likeCount = 0;

  @override
  Widget build(BuildContext context) {
    final double size = 35;

    return LikeButton(
      size: size,
      isLiked: isLiked,
      likeCount: likeCount,
      countPostion: CountPostion.bottom,
    );
  }
}
