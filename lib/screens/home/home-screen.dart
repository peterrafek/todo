import 'package:flutter/material.dart';
import 'package:todo/screens/bottom-sheets/add-bottom-sheet/add-bottomsheet.dart';
import 'package:todo/screens/home/tabs/list-tab/list-tab.dart';
import 'package:todo/screens/home/tabs/settings-tab/settings-tab.dart';
import 'package:todo/utils/app-colors.dart';

class HomeScreen extends StatefulWidget {
  static const routeName ="HomeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int CurrentTabIndex = 0;
  List<Widget>tabs=[
    ListTab(),
    SettingsTab()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("to do list"),
      ),
      floatingActionButton: buildFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: buildBottomNavigationBar(),
      body:tabs[CurrentTabIndex] ,
    );
  }

  FloatingActionButton buildFloatingActionButton(){
    return FloatingActionButton(child: Icon(Icons.add),
      onPressed: (){
             showModalBottomSheet(
                 isScrollControlled: true,
                 context: context, builder: (context){
                   return AddBottomSheet();
             });
      },
    shape:
    StadiumBorder(
        side: BorderSide(
            color: AppColors.White,width: 4)),);
  }

  Widget buildBottomNavigationBar() {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 14,
      clipBehavior: Clip.hardEdge,
      child: BottomNavigationBar(
        currentIndex:CurrentTabIndex ,
         onTap: (newTabIndex){
           CurrentTabIndex = newTabIndex;
           setState(() {

           });
         }
        ,

        items: [
          BottomNavigationBarItem(icon: Icon(Icons.list),label: "list"),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: "settings")
        ],
      ),
    );
  }
}
