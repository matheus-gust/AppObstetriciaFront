import 'package:flutter/material.dart';

class Slide extends StatelessWidget {

  final _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView(
        controller: _pageController,
        children: <Widget>[
          Container(color: Colors.black,),
          Container(color: Colors.grey,)
        ],
      ),
    );
  }
}
