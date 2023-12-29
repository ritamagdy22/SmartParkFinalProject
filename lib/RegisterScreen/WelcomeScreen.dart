import 'package:flutter/material.dart';
import 'package:smartpark/RegisterScreen/ParkingPlaces.dart';
import 'package:smartpark/widget/Custom_Button.dart';

class WelcomeScreen extends StatelessWidget {
  static const RouteName = "WelcomeScreen";

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // Align children at the start
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              'assets/images/Hello_Screen.png',
            ),
          ),
          Expanded(
              flex: 2, child: Image.asset('assets/images/smartwelcome.png')),
          SizedBox(height: 10),
          Text(
            "The best parking applicantion for you",
            style: TextStyle(
                color: Colors.black,
                decoration: TextDecoration.none,
                fontSize: 15),
          ),
          Spacer(),
          CustomButton(
            title: "Next",
            onPressed: () {
              Navigator.of(context).pushNamed(ParkingPlaces.RouteName);
            },
          )
        ],
      ),
    );
  }
}

/*
ElevatedButton(onPressed: (){
            Navigator.of(context).pushNamed(ParkingPlaces.RouteName);

          },
              style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
            minimumSize: MaterialStateProperty.all(Size(370, 50)),

          ),
              child: Text("Next",
                style: TextStyle(color: Colors.white,
                fontSize: 25
                ),
              ))
 */
