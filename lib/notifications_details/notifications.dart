import 'package:doctor/color.dart';
import 'package:doctor/notifications_details/medication_details.dart';
import 'package:doctor/widgets/my_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';


import 'package:table_calendar/table_calendar.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  CalendarFormat format = CalendarFormat.month;
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
            padding:
                const EdgeInsets.only(top: 10, right: 20, left: 20, bottom: 15),
            alignment: Alignment.topCenter,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: MyColors().primaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/m01.png',
                    width: 50,
                    height: 50,
                  ),
                
                ],
              ),
            )),
        Directionality(
            textDirection: TextDirection.rtl,
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.9,
                decoration: BoxDecoration(
                  color: MyColors().white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 30, left: 15, top: 20),
                  child: ListView(
                    children: [
                      GreyText(text: DateTime.now().toString()),
                      Padding(
                        padding: const EdgeInsets.only(right: 30, left: 45),
                        child: TableCalendar(
                          focusedDay: focusedDay,
                          firstDay: DateTime(2022),
                          lastDay: DateTime(2030),
                          calendarFormat: format,
                          onFormatChanged: (CalendarFormat _format) {
                            setState(() {
                              format = _format;
                            });
                          },
                          startingDayOfWeek: StartingDayOfWeek.saturday,
                          daysOfWeekVisible: true,
                          onDaySelected:
                              (DateTime selectDay, DateTime focusDay) {
                            setState(() {
                              selectedDay = selectDay;
                              focusedDay = focusDay;
                            });
                          },
                          rowHeight: 40,
                          headerStyle: HeaderStyle(
                              leftChevronIcon: Icon(
                                Icons.chevron_left,
                                color: MyColors().white,
                              ),
                              rightChevronIcon: Icon(
                                Icons.chevron_right,
                                color: MyColors().white,
                              ),
                              formatButtonTextStyle:
                                  TextStyle(color: MyColors().white),
                              titleTextStyle:
                                  TextStyle(color: MyColors().white),
                              headerPadding: const EdgeInsets.all(0.1),
                              headerMargin:
                                  const EdgeInsets.symmetric(vertical: 15),
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.only(
                                      topRight: Radius.circular(20),
                                      topLeft: Radius.circular(20)),
                                  color: MyColors().primaryColor),
                              formatButtonVisible: false,
                              titleCentered: true),
                          calendarStyle: CalendarStyle(
                              todayDecoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors().primaryColor,
                              ),
                              weekendTextStyle:
                                  TextStyle(color: MyColors().primaryColor),
                              defaultTextStyle:
                                  TextStyle(color: MyColors().primaryColor),
                              selectedTextStyle:
                                  TextStyle(color: MyColors().white),
                              isTodayHighlighted: false,
                              selectedDecoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: MyColors().primaryColor,
                              )),
                          daysOfWeekStyle: DaysOfWeekStyle(
                            weekendStyle:
                                TextStyle(color: MyColors().primaryColor),
                            weekdayStyle:
                                TextStyle(color: MyColors().primaryColor),
                          ),
                          selectedDayPredicate: (DateTime date) {
                            return isSameDay(selectedDay, date);
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const BlackText(text: 'اليوم'),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SmallGreyText(
                                text: '10:00',
                                size: 16,
                              ),
                              SmallGreyText(
                                text: '4:00',
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MedicationDetails()));
                              },
                              child: const MedicationContainer(
                                  image: 'assets/panadol.jpg',
                                  text: 'بانادول اكسترا',
                                  text2: 'مسكن للالم وخافض للحرارة')),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              SmallGreyText(
                                text: '10:00',
                                size: 16,
                              ),
                              SmallGreyText(
                                text: '4:00',
                                size: 16,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          const MedicationContainer(
                              image: 'assets/panadol2.jpg',
                              text: 'بانادول اكسترا',
                              text2: 'مسكن للالم وخافض للحرارة'),
                        ],
                      ),
                    ],
                  ),
                ))),
      ],
    ));
  }
}
