import 'package:flutter/material.dart';

Widget StoryTile(String avatarUrl, String storyUrl, String userName) {
  return Container(
    margin: EdgeInsets.only(right: 20),
    height: 144,
    width: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        image: NetworkImage(storyUrl),
        fit: BoxFit.cover
        ),
    ),
    child: Padding(
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(avatarUrl),
          ),
          Expanded(
            child: Container(),
          ),
          Text(
            userName,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18,
              color: Colors.white,
            ),
          )
        ],
      ),
    ),
  );
}
