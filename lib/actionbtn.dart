import 'package:flutter/material.dart';

Widget ActionButton(IconData icon, String actionTitle, Color iconColor) {
  return Expanded(
    child: FlatButton.icon(
      onPressed: () {}, icon: Icon(icon, color: iconColor), 
      label: Text(actionTitle, style: TextStyle(color: Colors.white))
    ),
  );
}
