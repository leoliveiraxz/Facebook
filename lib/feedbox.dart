import 'package:flutter/material.dart';
import 'actionbtn.dart';

Widget feedbox(String avatarUrl, String userName, String date,
    String contentText, String contentImg) {
  return Container(
      margin: const EdgeInsets.only(bottom: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: const Color(0xFF262626)),
      child: Padding(
        padding: const EdgeInsets.all(8),
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
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(userName,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600)),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(date,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600))
                  ],
                ))
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            if (contentText != "")
              Text(
                contentText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            const SizedBox(
              height: 10,
            ),
            if (contentImg != "") Image.network(contentImg),
            const SizedBox(
              height: 10,
            ),
            const Divider(thickness: 1.5, color: Color(0xFF505050)),
            Row(
              children: [
                ActionButton(Icons.thumb_up, "Gostei", const Color(0xFF505050)),
                ActionButton(Icons.comment, "Comentar", const Color(0xFF505050)),
                ActionButton(Icons.share, "Compartilhar", const Color(0xFF505050)),
              ],
            )
          ],
        ),
      ));
}
