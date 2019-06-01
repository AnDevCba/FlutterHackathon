import 'package:flutter/material.dart';
import 'contact_page.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new Scaffold(
      appBar: new AppBar(
        title: new Text("Using Listview"),
      ),
      body: new ContactPage(),
    ),
  ));
}