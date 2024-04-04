// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hackathon/pages/nav.dart';
import 'package:telephony/telephony.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final sms = Telephony.instance;
  List<String> rep = ["8590193299", "9562088194"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        iconTheme:
            IconThemeData(color: const Color.fromARGB(255, 255, 255, 255)),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: const Text(
          "S O S",
          style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.w800,
              fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        actions: [
          // IconButton(
          //     onPressed: () {},
          //     icon: Icon(Icons.toggle_on),
          //     color: Color.fromARGB(255, 255, 255, 255))
        ],
      ),
      body: Expanded(
        child: Container(
          child: TextButton(
              onPressed: () {
                sms.sendSmsByDefaultApp(to: "8590193299", message: "Test");
              },
              child: Text("SMS")),
        ),
      ),
    );
  }
}
