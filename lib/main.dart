import 'package:flutter/material.dart';
import 'package:flutter_hackaton/repo_page.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("FLibs"),
      ),
      body: new RepoPage(),
    ),
  ));
}