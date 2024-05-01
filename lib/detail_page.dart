import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:sunflower/plant.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.plant});
  final Plant plant;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                FadeInImage(placeholder: const AssetImage('assets/img/image.png'), image: NetworkImage(plant.image),height: 250,width: double.infinity,fit: BoxFit.cover),
                const Gap(20),
                Align(alignment: Alignment.center,child: Text(plant.title,style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.onPrimaryContainer
                ))),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("${plant.desc}\n${plant.desc}\n${plant.desc}",style: const TextStyle(
                    fontStyle: FontStyle.italic
                  ),),
                ),
                const Gap(10),
                TextButton(style: TextButton.styleFrom(elevation: 0),onPressed: () => _link(),
                    child: Text(plant.link,style: const TextStyle(color: CupertinoColors.systemBlue)))
              ],
            ),
          ),
          Positioned(
            top: 25,
            left: 10,
            right: 10,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _roundBtn(Icons.arrow_back, () => Navigator.of(context).pop()),
                _roundBtn(Icons.more_vert, () {}),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _link() async {
    await launchUrl(Uri.parse(plant.link));
  }

  Widget _roundBtn(IconData ketmon, VoidCallback clicked) {
    return InkWell(
      borderRadius: BorderRadius.circular(50),
      onTap: clicked,
      child: Container(
        width: 55,
        height: 55,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.black26
        ),
        child: Center(child: Icon(ketmon,color: Colors.white)),
      ),
    );
  }
}
