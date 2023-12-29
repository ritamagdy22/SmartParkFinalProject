import 'package:flutter/material.dart';
import 'package:smartpark/RegisterScreen/BookAndPay.dart';
import 'package:smartpark/widget/Custom_Button.dart';

import '../UI/LoginScreen.dart';

class ParkingPlaces extends StatelessWidget {
  static const RouteName = 'ParkingPlace';

  @override
  Widget build(BuildContext context) {
    MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).padding.top)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(LoginScreen.RouteName);

                  // Handle the action when the "Skip" button is pressed.
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
          Image.asset('assets/images/parking2.png'),
          SizedBox(
            height: 70,
          ),
          Image.asset("assets/images/FindParkingPlaces.png"),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(BookAndPay.RouteName);
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
        ],
      ),
    );
  }
}
