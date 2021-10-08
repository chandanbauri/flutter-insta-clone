// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 0.1),
                          blurRadius: 5)
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 14,
                      bottom: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Padding(
                            padding: EdgeInsets.all(2),
                            child: Text(
                              'Instagram',
                              style: TextStyle(
                                  fontFamily: 'Cookie',
                                  fontSize: 40.0,
                                  fontWeight: FontWeight.bold),
                            )),
                        Row(
                          children: <Widget>[
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.add_box_outlined)),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.messenger_outline))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: false,
                    children: <Widget>[
                      PostCard(
                          title: 'Chandan Bauri',
                          imagePath: 'assets/post1.png'),
                      PostCard(
                          title: 'Avishek Bannerjee',
                          imagePath: 'assets/post2.png'),
                      PostCard(
                          title: 'Subir Mondal', imagePath: 'assets/post3.png'),
                      PostCard(title: 'Isu', imagePath: 'assets/post4.png'),
                      PostCard(title: 'SUFU', imagePath: 'assets/post1.png'),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class PostCard extends StatefulWidget {
  final title;
  final imagePath;

  // ignore: use_key_in_widget_constructors
  PostCard({this.title, this.imagePath});

  @override
  _PostCardState createState() => _PostCardState();
}

class _PostCardState extends State<PostCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5),
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
            child: SizedBox(
              height: 50,
              width: (MediaQuery.of(context).size.width),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        splashColor: Colors.amber,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: const BoxDecoration(
                            color: Colors.amberAccent,
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 0,
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          const SizedBox(
                            height: 5,
                            width: 0,
                          ),
                          Text(
                            widget.title + ' . ' + widget.title,
                            style: const TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 12),
                          )
                        ],
                      )
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          Image(
            image: AssetImage(widget.imagePath),
            width: (MediaQuery.of(context).size.width),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              bottom: 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.favorite_border)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chat_bubble_outline_sharp)),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.send_outlined)),
                      ],
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.turned_in_not_sharp))
                  ],
                ),
                const SizedBox(
                  height: 6,
                  width: 0,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 14,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        '123Likes',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
