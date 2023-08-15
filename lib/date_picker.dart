import 'package:flutter/material.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({Key? key}) : super(key: key);

  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final _dateController = useTextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: TextFormField(
        style: TextStyle(color: Colors.black, fontSize: 18),
        readOnly: true,
        controller: _dateController,
        decoration: InputDecoration(
          labelText: 'Date',
        ),
        onTap: () {
          showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2015),
            lastDate: DateTime(2025),
          ).then((selectedDate) {
            if (selectedDate != null) {
              _dateController.text =
                  DateFormat('yyyy-MM-dd').format(selectedDate);
            }
          });
        },
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter date.';
          }
          return null;
        },
      )),
    );
  }

  static useTextEditingController() {}

  // ignore: non_constant_identifier_names
  DateFormat(String s) {}
}
