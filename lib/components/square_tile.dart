import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String imagepath;
  const SquareTile({
    super.key,
    required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration :BoxDecoration(
        border:Border.all(color:const Color.fromARGB(255, 185, 180, 180)),
        borderRadius:BorderRadius.circular(10),
        color:Colors.white),
      child:Image.asset(
        imagepath,
        height:40,
      ),
    );
  }
}