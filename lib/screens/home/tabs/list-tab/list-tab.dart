import 'package:flutter/material.dart';
import 'package:todo/screens/home/tabs/list-tab/todo-widget.dart';

class ListTab extends StatelessWidget {
  const ListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Expanded(
        child: ListView.builder(itemCount:100,
          itemBuilder: (context ,index){
          return TodoWidget();
          }
    ),
      )
    ]
    );
  }
}
