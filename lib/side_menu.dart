import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          padding: const EdgeInsets.all(0),
          margin: const EdgeInsets.all(0),
          child: Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text('DrawerHeader'),
          ),
        ),
        ListTile(
          title: const Text('Page A'),
          onTap: () {
            debugPrint('Page A');
          },
        ),
        ListTile(
          title: const Text('Page B'),
          onTap: () {
            debugPrint('Page B');
          },
        ),
        ListTile(
          title: const Text('Page C'),
          onTap: () {
            debugPrint('Page C');
          },
        ),
      ],
    );
  }
}
