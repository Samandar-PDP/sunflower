import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sunflower/detail_page.dart';
import 'package:sunflower/plant.dart';
import 'package:sunflower/plant_item.dart';

class GardenPage extends StatelessWidget {
  const GardenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: plantList.length, // do import
        itemBuilder: (context, index) => OpenContainer(
          closedElevation: 0,
          closedShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          openShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          closedColor: Colors.white,
          transitionDuration: const Duration(milliseconds: 700),
          openColor: Colors.greenAccent,
          closedBuilder: (context, callback) => PlantItem(plant: plantList[index], onClick: callback),
          openBuilder: (context, callback) => DetailPage(plant: plantList[index]),
        ),
      ),
    );
  }
}
