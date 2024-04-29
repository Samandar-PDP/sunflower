import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:sunflower/plant.dart';
import 'package:sunflower/plant_item.dart';

class GardenPage extends StatelessWidget {
  const GardenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
      ),
      itemCount: plantList.length, // do import
      itemBuilder: (context, index) => OpenContainer(
        transitionDuration: Duration(milliseconds: 500),
        closedColor: Colors.red,
        openColor: Colors.greenAccent,
        closedBuilder: (context, callback) => PlantItem(plant: plantList[index]),
        openBuilder: (context, callback) => Container(),
      ),
    );
  }
}
