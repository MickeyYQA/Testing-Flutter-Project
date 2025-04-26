import 'package:flutter/material.dart';
import 'timelineItem.dart';

class timelinePage extends StatefulWidget {
  const timelinePage({super.key});

  @override
  State<timelinePage> createState() => _timelinePageState();
}

class _timelinePageState extends State<timelinePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          timelineItem(postPicture: "images/sheep.jpeg", postDescription: "Hello World"),
          timelineItem(postPicture: "images/sheep.jpeg", postDescription: "Hello World"),
          timelineItem(postPicture: "images/sheep.jpeg", postDescription: "Hello World"),
        ],
      )
      
    );
  }
}
