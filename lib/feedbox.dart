import 'package:flutter/material.dart';
import 'actionbtn.dart';

Widget feedbox(String avatarUrl, String userName, String date,
    String contentText, String contentImg) {
  return Container(
      margin: EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: Color(0xFF262626)),
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(avatarUrl),
                  radius: 25,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(userName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w600)
                              ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(userName,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600)
                              )
                    ],
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            if (contentText != "")
              Text(
                contentText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            SizedBox(
              height: 10,
            ),
            if (contentImg != "") Image.network(contentImg),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                ActionButton(Icons.thumb_up, "Gostei", Color(0xFF505050)),
                ActionButton(Icons.thumb_up, "Comentar", Color(0xFF505050)),
                ActionButton(Icons.thumb_up, "Compartilhar", Color(0xFF505050)),
              ],
            )
          ],
        ),
      ));
}
