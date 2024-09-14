import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:to_do/task_list/task_item.dart';

class TaskList_Tab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          EasyDateTimeLine(
            locale: 'en',
            initialDate: DateTime.now(),
            onDateChange: (date) {},
            headerProps: EasyHeaderProps(
              selectedDateStyle:
                  Theme.of(context).textTheme.titleSmall!.copyWith(),
              monthStyle: Theme.of(context).textTheme.titleSmall!.copyWith(),
              monthPickerType: MonthPickerType.switcher,
            ),
            dayProps: EasyDayProps(
              todayStyle: DayStyle(
                  dayStrStyle: TextStyle(),
                  dayNumStyle:
                      Theme.of(context).textTheme.titleMedium!.copyWith()),
              inactiveDayStyle: DayStyle(
                  dayStrStyle: TextStyle(),
                  dayNumStyle:
                      Theme.of(context).textTheme.titleMedium!.copyWith()),
              // dayStructure: DayStructure.dayStrDayNum,
              activeDayStyle: DayStyle(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff3371FF),
                      Color(0xff5D9CEC),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Task_Item();
              },
            ),
          )
        ],
      ),
    );
  }
}
