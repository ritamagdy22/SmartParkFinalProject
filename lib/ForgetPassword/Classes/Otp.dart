import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Otp extends StatelessWidget {
  Otp({
    Key? key,
  }) : super(key: key);

  var textFormFieldDecoration = InputDecoration(
    hintText: "0",
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(
        width: 2,
        color: Colors.black87,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(
        width: 3,
        color: Colors.black87,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SizedBox(
      width: size.width,
      height: size.height * 0.1,
      child: Form(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 65,
                height: 65,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: textFormFieldDecoration,
                  cursorColor: Colors.black87,
                  textAlign: TextAlign.center,
                  cursorHeight: 30.0,
                  maxLines: 1,
                  style: textTheme.headline1,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                width: 65,
                height: 65,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: textFormFieldDecoration,
                  cursorColor: Colors.black87,
                  textAlign: TextAlign.center,
                  cursorHeight: 30.0,
                  maxLines: 1,
                  style: textTheme.headline1,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                width: 65,
                height: 65,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusScope.of(context).nextFocus();
                    }
                  },
                  decoration: textFormFieldDecoration,
                  cursorColor: Colors.black87,
                  textAlign: TextAlign.center,
                  cursorHeight: 30.0,
                  maxLines: 1,
                  style: textTheme.headline1,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
              SizedBox(
                width: 65,
                height: 65,
                child: TextFormField(
                  onChanged: (value) {
                    if (value.length == 1) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    }
                  },
                  decoration: textFormFieldDecoration,
                  cursorColor: Colors.black87,
                  textAlign: TextAlign.center,
                  cursorHeight: 30.0,
                  maxLines: 1,
                  style: textTheme.headline1,
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(1),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
