// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 0),
                  child: const Text(
                    'Review Title',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                Text(
                  '11K views• 3 days ago',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    return MaterialApp(
      title: 'Olex Task',
      home: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(8.0),
          margin: const EdgeInsets.symmetric(horizontal: 8.0),
          child: ListView(
            children: [
              Stack(clipBehavior: Clip.none, children: [
                Image.asset(
                  'images/background.png',
                  width: 600,
                  fit: BoxFit.cover,
                ),
                Positioned(
                    left: 0,
                    top: 20,
                    child: (Image.asset(
                      'images/thumb.jpeg',
                      width: 60,
                      height: 24,
                    ))),
                Positioned(
                    left: 20,
                    top: 440,
                    child: (Image.asset(
                      'images/circle.png',
                      width: 260,
                      height: 124,
                      alignment: Alignment.bottomLeft,
                    ))),
                Positioned(
                    left: 550,
                    top: 500,
                    child: (Container(
                      height: 25.0,
                      // padding: const EdgeInsets.all(8.0),
                      // margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      decoration: BoxDecoration(
                        color: Colors.grey[900],
                      ),
                      child: const Center(
                        child: Text(
                          '2:31',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    )))
              ]),
              titleSection,
            ],
          ),
        ),
      ),
    );
  }
}
