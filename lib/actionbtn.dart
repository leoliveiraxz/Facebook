// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

Widget ActionButton(IconData icon, String actionTitle, Color iconColor) {
  return Expanded(
    child: FlatButton.icon(
      onPressed: () {}, icon: Icon(icon, color: iconColor), 
      label: Text(actionTitle, style: const TextStyle(color: Colors.white))
    ),
  );
}
