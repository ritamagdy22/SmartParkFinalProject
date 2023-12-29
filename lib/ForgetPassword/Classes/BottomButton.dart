import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      width: size.width,
      height: size.height * 0.07,
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        MaterialButton(
          onPressed: () {},
          minWidth: size.width / 2.2,
          height: size.height * 0.06,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
              side: const BorderSide(color: Colors.deepPurpleAccent, width: 2)),
          child: Text("Resend", style: textTheme.subtitle1),
        ),
        MaterialButton(
          onPressed: () {},
          color: Colors.deepPurpleAccent,
          minWidth: size.width / 2.2,
          height: size.height * 0.06,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text("Confirm",
              style: textTheme.subtitle1?.copyWith(color: Colors.white)),
        ),
      ]),
    );
  }
}
