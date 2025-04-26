import 'package:flutter/material.dart';

class timelineItem extends StatelessWidget {
  final String postPicture;
  final String postDescription;
  const timelineItem({required this.postPicture, required this.postDescription});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(postPicture),
          Text(postDescription),
        ],)
    );
  }
}