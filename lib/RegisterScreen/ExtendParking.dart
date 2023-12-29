import 'package:flutter/material.dart';

import '../UI/LoginScreen.dart';
import '../widget/Custom_Button.dart';

class ExtendParking extends StatelessWidget {
  static const RouteName = "ExtendParking";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 12),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            ///skip
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(LoginScreen.RouteName);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
            ///image
            Center(
              child: Container(
                color: Colors.white,
                child: Center(
                  child: Column(
                    children: [
                      const Padding(padding: EdgeInsets.all(70)),
                      Image.asset('assets/images/ExtendParking.png'),
                      const SizedBox(
                        height: 70,
                      ),
                      Image.asset("assets/images/TextExtendParkingTime.png"),
                    ],
                  ),
                ),
              ),
            ),
            ///
            const Spacer(),
            CustomButton(
              title: "Next",
              onPressed: () {
                Navigator.of(context).pushNamed(LoginScreen.RouteName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
/*
ElevatedButton(
              onPressed: () {

                Navigator.of(context).pushNamed(LoginScreen.RouteName);

              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.black),
                minimumSize: MaterialStateProperty.all(Size(370, 50)),
              ),
              child: Text(
                "Next",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
 */
