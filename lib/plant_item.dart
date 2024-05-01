import 'package:flutter/material.dart';
import 'package:sunflower/plant.dart';

class PlantItem extends StatelessWidget {
  const PlantItem({super.key, required this.plant, required this.onClick});
  final Plant plant;
  final void Function() onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onClick,
          borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(12),
              topRight: Radius.circular(12)
          ),
        child: Ink(
          decoration: BoxDecoration(
            color: Colors.green.shade200,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  topRight: Radius.circular(12)
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 2, child: Image.network(plant.image,width: double.infinity,fit: BoxFit.cover)),
              Expanded(child: Center(child: Text(plant.title,style: TextStyle(
                fontSize: 20,
                color: Theme.of(context).colorScheme.onPrimaryContainer // let's see the color scheme
              ),)))
            ],
          ),
        ),
      ),
    );
  }
}
