import 'package:flutter/material.dart';
import 'package:smartpark/widget/Custom_Button.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:timer_count_down/timer_count_down.dart';
import 'package:time/time.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
class ParkingDetails extends StatefulWidget {

  static const routename = "ParkingDetails";

  @override
  _ParkingDetailsState createState() => _ParkingDetailsState();
}

class _ParkingDetailsState extends State<ParkingDetails> {
  double _currentSliderValue = 20;

  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();
  CalendarFormat _calendarFormat = CalendarFormat.month;
  Map<DateTime, List<dynamic>> _events = {}; // Your events map

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
      body: Column(
        children: [
          Text(
            "Select Date",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: _focusedDay,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay ?? selectedDay;
              });
            },
            calendarFormat: _calendarFormat,
            onFormatChanged: (format) {
              setState(() {
                _calendarFormat = format;
              });
            },
            onPageChanged: (focusedDay) {
              setState(() {
                _focusedDay = focusedDay;
              });
            },
            eventLoader: (day) {
              return _getEventsForDay(day);
            },
            // events: _events, // Pass your events map here
          ),


          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Duration",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Slider(
                value: _currentSliderValue,
                max: 100,
                divisions: 5,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                  });
                },
              ),



              SingleChildScrollView(
                child: TextButton(
                    onPressed: () {
                      DatePicker.showDatePicker(context,
                          showTitleActions: true,
                          minTime: DateTime(2023, 3, 5),
                          maxTime: DateTime(2024, 6, 7), onChanged: (date) {
                            print('change $date');
                          }, onConfirm: (date) {
                            print('confirm $date');
                          }, currentTime: DateTime.now(), locale: LocaleType.en);
                    },
                    child: Text(
                      'show date time picker',
                      style: TextStyle(color: Colors.blue),
                    )),
              ),

              SizedBox(height: 30),

             CustomButton(title: "Pay Now",
             onPressed: (){},
             )



            ],
          ),





        ],
      ),
    );
  }

  List<dynamic> _getEventsForDay(DateTime day) {
    // Implement logic to fetch events for the given day from your data source
    return _events[day] ?? [];
  }
}




/*
 ElevatedButton(
                onPressed: () {
                  // Perform login logic here using the email and password
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.black),
                  minimumSize: MaterialStateProperty.all(Size(370, 50)),
                ),
                child: Text('Pay Now'),
              ),
 */