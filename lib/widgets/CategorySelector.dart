import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  const CategorySelector({super.key});

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selected=0;
  final List <String> Categories= [
    "Messages",
    "Online",
    "Groups",
    "Requests",
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: Categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selected = index;
              });
            },
            child: Padding(
          
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30,),
              child: Text(Categories[index],
              style: TextStyle(
                color: index==selected? Colors.white : Colors.white70,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
              ),),
            ),
          );
        },),
    );
  }
}