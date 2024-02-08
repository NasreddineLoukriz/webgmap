import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webgmap/controllers/home_controller.dart';
import 'package:webgmap/view/widgets/custom_card.dart';
//

class HowTO extends StatelessWidget {
  const HowTO({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (newController) => ListView(
        children: [
          const CustomCard('assets/4.png', 'How To Use The App '),
          InkWell(
              child: const CustomCard('assets/7.png', 'Go To Gmap'),
              onTap: () {
                newController.onclick(4);
              }),
          const CustomCard('assets/5.png', 'Find A Location'),
          const CustomCard('assets/1.png', 'Select The Location'),
          const CustomCard('assets/6.png', 'Click the Share Button'),
          const CustomCard(
              'assets/10.png', 'For maximum privacy we recommend using a vpn '),
          const Divider(),
          OutlinedButton(
            onPressed: () {
              newController.onclick(4);
            },
            child: const Text('Go To Gmap'),
          )
        ],
      ),
    );
  }
}
