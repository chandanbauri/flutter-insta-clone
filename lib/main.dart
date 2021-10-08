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
          body: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 14),
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
            ],
          )),
    );
  }
}


