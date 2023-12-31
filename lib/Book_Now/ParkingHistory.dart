import 'package:flutter/material.dart';

class ParkingHistory extends StatefulWidget {
  const ParkingHistory({super.key});



  @override
  State<ParkingHistory> createState() => _ParkingHistoryState();
}

class _ParkingHistoryState extends State<ParkingHistory> {
  int selectedIndex=1;

  @override
  Widget build(BuildContext context) {

    return  Container(
      margin: const EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width,
      height:MediaQuery.of(context).size.height,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex=0;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: 80,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: const Center(
                    child: Text(
                      'Item ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex=1;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: 80,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                  child: const Center(
                    child: Text(
                      'Item2 ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  setState(() {
                    selectedIndex=2;
                  });
                },
                child: Container(
                  margin: const EdgeInsets.all(5),
                  width: 80,
                  height: 45,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Center(
                    child: Text(
                      'Item2 ',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 1,
              itemBuilder: (BuildContext ctx, int index) {
                return dataList[selectedIndex] ;
              },
            ),
          ),
        ],
      ),
    );
  }
}
List dataList=[
  Container(
    //color: Colors.red,
    child: const Text("completed",style: TextStyle(color: Colors.white,fontSize: 19)),
  ),
  Container(
    //color: Colors.green,
    child: const Text("Ongoing",style: TextStyle(color: Colors.white,fontSize: 19)),
  ),
  Container(
   // color: Colors.blue,
    child: const Text("History",style: TextStyle(color: Colors.white,fontSize: 19)),
  ),

];