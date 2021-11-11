//https://youtu.be/h2CM5eOjEFM?t=771

import 'package:facebook/actionbtn.dart';
import 'package:facebook/storytile.dart';
import 'package:facebook/feedbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color bgBlack = Color(0xFF1a1a1a);
  Color mainBlack = Color(0xFF262626);
  Color fbBlue = Color(0xFF2D88FF);
  Color mainGrey = Color(0xFF505050);
  List<String> avatarUrl = [
    "https://64.media.tumblr.com/094dd01752a67223e63d9d5dcd7ac2bb/20881634c261c708-24/s640x960/b35b29c0ad78ea4e692cead4e39d2dd4766cf7fe.jpg"
  ];
  List<String> storyUrl = [
    "https://ychef.files.bbci.co.uk/976x549/p07n19vr.jpg",
    "https://s2.glbimg.com/PWzElwICb5ItVqUPSQmj6bxMkSY=/620x455/e.glbimg.com/og/ed/f/original/2014/07/29/caverna-melissani-kefalonia-grecia.jpg",
    "https://media-manager.noticiasaominuto.com.br/1920/naom_593e45e24a6cc.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkrJOGvSfnRLSXeafPynsYSMPdoeZJVPiBkQ&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGEHIj10rBIHot7KlXt7euAYXUO6UbChcYqA&usqp=CAU"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgBlack,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: mainBlack,
        title: Text(
          "Facebook",
          style: TextStyle(color: fbBlue, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: mainBlack,
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 10),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 25,
                                backgroundImage: NetworkImage(avatarUrl[0]),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                  child: TextField(
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(left: 25),
                                  hintText: "Escreva algo...",
                                  filled: true,
                                  fillColor: mainGrey,
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide.none),
                                ),
                              ))
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Divider(color: mainGrey, thickness: 1.5),
                          Row(
                            children: [
                              ActionButton(
                                  Icons.live_tv, "Live", Color(0xFFF23E5C)),
                              ActionButton(
                                  Icons.image, "Picture", Color(0xFF58c472)),
                              ActionButton(Icons.insert_emoticon, "Activity",
                                  Color(0xFFF8C03E)),
                            ],
                          )
                        ],
                      ))),
              SizedBox(height: 10),
              Container(
                height: 160,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    StoryTile(avatarUrl[0], storyUrl[0], "Ling Cham"),
                    StoryTile(avatarUrl[0], storyUrl[1], "Ling Cham"),
                    StoryTile(avatarUrl[0], storyUrl[2], "Ling Cham"),
                    StoryTile(avatarUrl[0], storyUrl[3], "Ling Cham"),
                    StoryTile(avatarUrl[0], storyUrl[4], "Ling Cham"),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Divider(thickness: 1.5, color: Color(0xFF505050)),
              feedbox(avatarUrl[0], "Ling Cham", "6 min", "Fck", ""),
              feedbox(avatarUrl[1], "Jose", "6 min", "Fck", storyUrl[1]),
            ],
          ),
        ),
      ),
    );
  }
}
