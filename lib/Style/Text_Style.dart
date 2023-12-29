import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StyleText extends StatelessWidget{

  String Texts;
  StyleText(this.Texts);

  @override
  Widget build(BuildContext context) {
    return Text(
      Texts,
      style: TextStyle(fontWeight: FontWeight.bold,
          color: Colors.black87,
         fontSize: 20
      ),

    );
  }
  
  
}