import 'package:flutter/material.dart';
import 'package:sunflower/plant.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          topRight: Radius.circular(12)
        )
      ),
      elevation: 6,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(flex: 2, child: Image.network(plant.image,width: double.infinity,fit: BoxFit.cover)),
          Expanded(child: Text(plant.title))
        ],
      ),
    );
  }
}
