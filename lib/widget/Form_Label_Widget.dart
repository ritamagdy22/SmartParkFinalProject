import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormLabelWidget extends StatelessWidget {

  String Label;
  FormLabelWidget({required this.Label});

  @override
  Widget build(BuildContext context) {
    return Text(
      Label,
      style: TextStyle(fontSize: 20,color: Colors.black87,
      fontWeight:FontWeight.bold),

    );
  }
}
