// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:newsapp/screen/general_screen.dart';
import 'package:newsapp/screen/health_screen.dart';
import 'package:newsapp/screen/science_screen.dart';
import 'package:newsapp/screen/technology_screen.dart';
import 'package:newsapp/screen/top_headlines_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text(
            "News App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          bottom: TabBar(
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: const Color.fromARGB(225, 226, 223, 223),
            ),
            isScrollable: true,
            tabs: [
              Tab(text: "General"),
              Tab(text: "Health"),
              Tab(text: "Technology"),
              Tab(text: "Science"),
              Tab(text: "Top headlines"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GeneralScreen(),
            HealthScreen(),
            TechnologyScreen(),
            ScienceScreen(),
            TopHeadlineScreen(),
          ],
        ),
      ),
    );
  }
}
