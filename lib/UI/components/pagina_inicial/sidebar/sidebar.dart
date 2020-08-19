import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          Container(
            color: Color.fromARGB(255, 255,70,70),
          ),

        ],
      ),
    );
  }
}
