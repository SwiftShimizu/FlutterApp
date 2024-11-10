import 'package:flutter/material.dart';
import 'package:flutterapp/side_menu.dart';

void main() {
  final appBar = AppBar(
    title: const Text('Flutter Example'),
    backgroundColor: Colors.blue,
  );

  // ドロワー
  const drawer = Drawer(
    child: SideMenu(),
  );

  // エンドドロワー
  const endDrawer = Drawer(
    child: SideMenu(),
  );

  final scaffold = Scaffold(
    appBar: appBar,
    drawer: drawer,
    endDrawer: endDrawer,
  );

  final app = MaterialApp(
    home: scaffold,
  );

  runApp(app);
}
