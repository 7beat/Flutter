import 'package:flutter/material.dart';
import 'package:untitled/constants/colors.dart';
import 'package:untitled/widgets/todo_item.dart';
import 'package:untitled/model/todo.dart';

class Home extends StatelessWidget {
 Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
      appBar: _buildAppBar(),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [
                searchBox(),
                Expanded(
                    child: ListView(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 50, bottom: 20),
                          child: Text(
                            'All ToDos',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),

                        for( ToDo todoo in todosList)
                        ToDoItem(todo: todoo,),
                      ],
                    )
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(children: [
              Expanded(child: Container(
                  margin: EdgeInsets.only(
                      bottom: 20,
                      right: 20,
                      left: 20
                  ),
                padding: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 5
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: const [BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 10.0,
                      spreadRadius: 0.0,
                  ),],
                    borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Add a new todo item',
                    border: InputBorder.none
                  ),
                ),
              )
              ),
              Container(
                margin: EdgeInsets.only(
                    bottom: 20,
                    right: 20),
                child: ElevatedButton(
                  child: Text('+', style: TextStyle(fontSize: 40,),),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue,
                    minimumSize: Size(60, 60),
                    elevation: 10,
                  ),
                ),
              )
            ],),
          )
        ],
      ),
    );
    //throw UnimplementedError();
  }

  Widget searchBox() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: TextField(
        decoration: InputDecoration(
            contentPadding: EdgeInsets.all(0),
            prefixIcon: Icon(Icons.search, color: Colors.black, size: 20),
            prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 25),
            border: InputBorder.none,
            hintText: 'Search',
            hintStyle: TextStyle(color: Colors.grey)),
      ),
    );
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
