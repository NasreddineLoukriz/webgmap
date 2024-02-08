import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Card(
            margin: const EdgeInsets.all(30),
            child: Image.asset('assets/11.png', fit: BoxFit.cover),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.blue,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Free Open Source App',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'An application that allows you to use Google Maps safely',
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.center,
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const Text(
                    'GitHub Repo',
                    style: TextStyle(fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                  IconButton(
                    onPressed: () async {
                      await launchUrl(Uri.parse(
                          'https://github.com/NasreddineLoukriz/webgmap'));
                    },
                    icon: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.blue,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/12.png',
                        fit: BoxFit.contain,
                        width: 50,
                        height: 50,
                      ),
                    ),
                  ),
                ],
              ),
              const Text(
                'All Image Assets from Icons8.com',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center,
              )
            ],
          ),
        )
      ],
    );
  }
}
