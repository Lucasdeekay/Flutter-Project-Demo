import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:new_app/components/drawer.dart';
import 'section/buttonSection.dart';
import 'section/imageSection.dart';
import 'section/textSection.dart';
import 'section/titleSection.dart';
import 'section/imageCardSection.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Tourism & Co"),
        ),
      ),
      drawer: const DrawerWidget(),
      body: ListView(
        children: [
          imageSection,
          const TitleSection(),
          buttonSection,
          textSection,
          imageCardSection,
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/quiz'),
                  child: const Text("Go To Quiz"),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/login'),
                  child: const Text("Login"),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
