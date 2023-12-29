import 'package:flutter/material.dart';
import 'package:smartpark/widget/Custom_Button.dart';

import 'Parking_Details.dart';

class BookNow extends StatelessWidget {

  static const routename= "BookNow";

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.transparent,
       elevation: 0,
       iconTheme: IconThemeData(color: Colors.black),
       leading: IconButton(
         icon: Icon(Icons.arrow_back),
         onPressed: () {
           Navigator.of(context).pop();
         },
       ),
     ),
     body: Padding(
       padding: EdgeInsets.all(15),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.stretch,
         children: [
           Image.asset("assets/images/BookNow.png",
             width: 300,
             height: 300,
           ),

           SizedBox(height: 30,width: 30,),

CustomButton(title: "Book Now", onPressed: () {
  Navigator.pushNamed(context, ParkingDetails.routename);

},)
         ],
       ),
     ),
   );
  }
}

/*
 ElevatedButton(
             onPressed: () {
               Navigator.pushNamed(context, ParkingDetails.routename);

             },
             style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(Colors.black),
               minimumSize: MaterialStateProperty.all(Size(340, 50)),
             ),
             child: Text('Book Now'),
           ),
 */