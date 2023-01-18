import 'package:flutter/material.dart';
import 'package:untitled/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Container(
        child: Text('This is home screen.'),
      ),
    );
    //throw UnimplementedError();
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: tdBGColor,
      title: Row(children: [
        Icon(
          Icons.menu,
          color: Colors.black,
          size: 30,
        )
      ]),
    );
  }
}