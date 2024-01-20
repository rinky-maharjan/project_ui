import'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:EdgeInsets.all(25),
        margin:EdgeInsets.all(25),
        decoration:BoxDecoration(
          color:Color.fromARGB(255, 74, 69, 69),
          borderRadius:BorderRadius.circular(8) 
        ),
        child:Center(
          child:Text(
            "Sign In",
            style:TextStyle(
              color: Colors.white,
              fontWeight:FontWeight.bold,
              fontSize:16,
            ))),
      ),
    );
  }
}