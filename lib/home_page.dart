import 'package:flutter/material.dart';
import 'package:sunflower/garden_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Sunflower"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.local_florist),text: "My Garden"),
              Tab(icon: Icon(Icons.eco), text: "Plant List"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            GardenPage(),
            Container(),
          ],
        )
      ),
    );
  }
}
