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
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Container(
              padding:  EdgeInsets.symmetric(horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20)
              ),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(0),
                  prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 20
                  ),
                  prefixIconConstraints: BoxConstraints(
                      maxHeight: 20,
                      minWidth: 25
                  ),
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey)
                ),
              ),
            )
          ],
        ),
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