



import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  //list of names

  MyApp ({Key? key}) :super (key: key);
  final List<String> names = ["theodocea", " theophilus", "lebrechta"];


  final List<String> images =[
"https://images.unsplash.com/photo-1637637499413-e9bc4131a400?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80",
"https://images.unsplash.com/photo-1637164851251-b0fd3e5623aa?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1370&q=80",
"https://images.unsplash.com/photo-1637608454257-c877eb9bfa8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwzOXx8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60"
 ];  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Fling'),
          backgroundColor: Colors.purple,
        ),
 
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context,int index) => ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(images[index])
          ), 
          title: const Text('what is your name?'),
          subtitle:  Text(names[index]),
          trailing: const Icon(Icons.check_circle_rounded,
          color: Colors.purple,
        ),
          ),
          

          itemCount: names.length, 
          ),
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.yellow,
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
      ),
        );


  }
}