import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do/my_theme.dart';

class AddTask_BottomSheet extends StatefulWidget {
  @override
  State<AddTask_BottomSheet> createState() => _AddTask_BottomSheetState();
}

class _AddTask_BottomSheetState extends State<AddTask_BottomSheet> {
  var selectedDate = DateTime.now();
  var formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.6,
      decoration: BoxDecoration(),
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width * 0.1,
        vertical: MediaQuery.of(context).size.height * 0.04,
      ),
      child: Column(
        children: [
          Text(
            'Add New Task',
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: my_Theme.blackColor),
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.06),
          Form(
              key: formKey,
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter your Task',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: my_Theme.greyColor,
                                fontWeight: FontWeight.w400)),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please Enter Task Title';
                      }
                      return null;
                    },
                    onChanged: (text) {
                      title = text;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.02),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'Enter Description',
                      hintStyle:
                          Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: my_Theme.greyColor,
                                fontWeight: FontWeight.w400,
                              ),
                    ),
                    validator: (text) {
                      if (text == null || text.isEmpty) {
                        return 'Please Enter Task Description';
                      }
                      return null;
                    },
                    onChanged: (text) {
                      description = text;
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                  Row(
                    children: [
                      Text(
                        'Select Date',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.04),
                  InkWell(
                    onTap: () {
                      showCalender();
                    },
                    child: Text(
                      '${DateFormat('yyyy-MM-dd').format(selectedDate)}',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.width * 0.06),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.08,
                              vertical:
                                  MediaQuery.of(context).size.height * 0.008)),
                      onPressed: () {
                        addTask();
                      },
                      child: Text(
                        'Add',
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: my_Theme.whiteColor),
                      ))
                ],
              ))
        ],
      ),
    );
  }

  void showCalender() async {
    var chosenDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(Duration(days: 365)),
    );
    selectedDate = chosenDate ?? DateTime.now();
    setState(() {});
  }

  void addTask() {
    if (formKey.currentState!.validate() == true) {}
  }
}
