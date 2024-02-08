import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:webgmap/view/widgets/custom_card.dart';

import '../../controllers/home_controller.dart';

class Nav extends StatelessWidget {
  const Nav({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: ((controller) => Scaffold(
                body: Center(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.onclick(3);
                            },
                            child: const CustomCard(
                                'assets/3.png', 'How To Use The App '),
                          ),
                        ), //InkWell
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.onclick(1);
                            },
                            child: const CustomCard('assets/9.png', 'Settings'),
                          ),
                        ), //InkWell
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.onclick(0);
                            },
                            child: const CustomCard('assets/8.png', 'About'),
                          ),
                        ), //InkWell
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              controller.onclick(4);
                            },
                            child:
                                const CustomCard('assets/2.png', 'Go to Gmap '),
                          ),
                        ), //InkWell
                      ]),
                ), //Column
              ) //Scaffold
          ), //Builder
    ); //GetBuilder
  } //Build
} // nav Class
