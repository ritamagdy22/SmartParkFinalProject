import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopTexts extends StatelessWidget {
  const TopTexts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: size.width,
      height: size.height * 0.1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Verification code", style: textTheme.headline2),
          const SizedBox(
            height: 2,
          ),
          Text("We have sent the verification code to",
              style: textTheme.headline3),
          const SizedBox(
            height: 5,
          ),
          RichText(
            text: TextSpan(
                text: "+98********56  ",
                style: textTheme.headline4,
                children: [
                  TextSpan(
                      text: "Change Phone number?", style: TextStyle(color: Colors.red))
                ]),
          ),
        ],
      ),
    );
  }
}
