import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResendCode extends StatelessWidget {
  const ResendCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return RichText(
      text: TextSpan(
          text: "Resend code after ",
          style: textTheme.headline3,
          children: [
            TextSpan(
                text: "1:20",
                style: TextStyle(color: Colors.red))
          ]),
    );
  }
}
