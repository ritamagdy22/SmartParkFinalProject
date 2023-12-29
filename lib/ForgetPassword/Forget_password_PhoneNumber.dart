import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Classes/Otp.dart';
import 'Classes/ResendCode.dart';
import 'Classes/TopTexts.dart';



class ForgetPasswordByPhoneNumber extends StatelessWidget {

  static const routename="ForgetPasswordByPhoneNumber";

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: const Icon(
              CupertinoIcons.back,
              color: Colors.deepPurpleAccent,
              size: 30,
            ),
          ),
          body: Container(

            margin: const EdgeInsets.symmetric(horizontal: 12),
            width: size.width,
            height: size.height,
            child: Column(
              children: [
                const TopTexts(),
                Otp(),
                const ResendCode(),
                Expanded(child: Container()),
               // BottomButton(size: size)
              ],
            ),
          ),
        ));
  }
}


