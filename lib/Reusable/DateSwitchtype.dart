import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateRangePicker extends StatefulWidget {
  final TextEditingController Controller;
  const DateRangePicker({Key? key, required this.Controller}) : super(key: key);

  @override
  _DateRangePickerState createState() => _DateRangePickerState();
}

class _DateRangePickerState extends State<DateRangePicker> {
  String _selectedDateRange = '';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: widget.Controller,
            readOnly: true,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.grey, width: 1),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              labelText: 'Date',
              suffixIcon: PopupMenuButton<String>(
                icon: const Icon(Icons.arrow_drop_down),
                onSelected: (value) {
                  setDateRange(value);
                },
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  const PopupMenuItem<String>(
                    value: 'Today',
                    child: Text('Today'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Yesterday',
                    child: Text('Yesterday'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Last 7 Days',
                    child: Text('Last 7 Days'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Last 30 Days',
                    child: Text('Last 30 Days'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'This Month',
                    child: Text('This Month'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Last Month',
                    child: Text('Last Month'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'This Year',
                    child: Text('This Year'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Last Year',
                    child: Text('Last Year'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'This FY',
                    child: Text('This FY'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Last FY',
                    child: Text('Last FY'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void setDateRange(String value) {
    final now = DateTime.now();
    DateTime startDate;
    DateTime endDate = now;

    switch (value) {
      case 'Today':
        startDate = now;
        break;
      case 'Yesterday':
        startDate = now.subtract(const Duration(days: 1));
        endDate = startDate;
        break;
      case 'Last 7 Days':
        startDate = now.subtract(const Duration(days: 7));
        break;
      case 'Last 30 Days':
        startDate = now.subtract(const Duration(days: 30));
        break;
      case 'This Month':
        startDate = DateTime(now.year, now.month, 1);
        break;
      case 'Last Month':
        startDate = DateTime(now.year, now.month - 1, 1);
        endDate = DateTime(now.year, now.month, 0);
        break;
      case 'This Year':
        startDate = DateTime(now.year, 1, 1);
        break;
      case 'Last Year':
        startDate = DateTime(now.year - 1, 1, 1);
        endDate = DateTime(now.year - 1, 12, 31);
        break;
      case 'This FY':
        startDate = now.month >= 4
            ? DateTime(now.year, 4, 1)
            : DateTime(now.year - 1, 4, 1);
        break;
      case 'Last FY':
        startDate = now.month >= 4
            ? DateTime(now.year - 1, 4, 1)
            : DateTime(now.year - 2, 4, 1);
        endDate = DateTime(startDate.year + 1, 3, 31);
        break;
      default:
        startDate = now;
    }

    setState(() {
      _selectedDateRange =
          '${DateFormat('dd-MM-yyyy').format(startDate)} - ${DateFormat('dd-MM-yyyy').format(endDate)}';
      widget.Controller.text = _selectedDateRange;
    });
  }
}
























// import 'package:flutter/material.dart';
// import 'package:intl/intl.dart';

// class DateRangePicker extends StatefulWidget {
//   const DateRangePicker({super.key});

//   @override
//   _DateRangePickerState createState() => _DateRangePickerState();
// }

// class _DateRangePickerState extends State<DateRangePicker> {
//   final TextEditingController _dateController = TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     _dateController.text = _formatDateRange(DateTime.now(), DateTime.now());
//   }

//   String _formatDateRange(DateTime start, DateTime end) {
//     return '${DateFormat('dd-MM-yyyy').format(start)} - ${DateFormat('dd-MM-yyyy').format(end)}';
//   }

//   void _updateDateRange(String option) {
//     DateTime now = DateTime.now();
//     DateTime startDate, endDate;

//     switch (option) {
//       case 'Today':
//         startDate = endDate = now;
//         break;
//       case 'Yesterday':
//         startDate = endDate = now.subtract(const Duration(days: 1));
//         break;
//       case 'Last 7 Days':
//         startDate = now.subtract(const Duration(days: 7));
//         endDate = now;
//         break;
//       case 'Last 30 Days':
//         startDate = now.subtract(const Duration(days: 30));
//         endDate = now;
//         break;
//       case 'This Month':
//         startDate = DateTime(now.year, now.month, 1);
//         endDate = DateTime(now.year, now.month + 1, 0);
//         break;
//       case 'Last Month':
//         startDate = DateTime(now.year, now.month - 1, 1);
//         endDate = DateTime(now.year, now.month, 0);
//         break;
//       case 'This Year':
//         startDate = DateTime(now.year, 1, 1);
//         endDate = DateTime(now.year, 12, 31);
//         break;
//       case 'Last Year':
//         startDate = DateTime(now.year - 1, 1, 1);
//         endDate = DateTime(now.year - 1, 12, 31);
//         break;
//       case 'ThisFY':
//         startDate = DateTime(now.month >= 4 ? now.year : now.year - 1, 4, 1);
//         endDate = DateTime(now.month >= 4 ? now.year + 1 : now.year, 3, 31);
//         break;
//       case 'Last FY':
//         startDate =
//             DateTime(now.month >= 4 ? now.year - 1 : now.year - 2, 4, 1);
//         endDate = DateTime(now.month >= 4 ? now.year : now.year - 1, 3, 31);
//         break;
//       default:
//         startDate = endDate = now;
//     }

//     _dateController.text = _formatDateRange(startDate, endDate);
//   }
//   Future<void> _selectDateRange(BuildContext context) async {
//   DateTimeRange? picked = await showDateRangePicker(
//     context: context,
//     initialDateRange: DateTimeRange(
//       start: DateTime.now(),
//       end: DateTime.now().add(Duration(days: 7)),
//     ),
//     firstDate: DateTime(2000),
//     lastDate: DateTime(2101),
//   );

//   if (picked != null) {
//     setState(() {
//       _selectedDateRange = "${picked.start.toString().substring(0, 10)} - ${picked.end.toString().substring(0, 10)}";
//     });
//   }
// }

// List<String> _predefinedRanges = ["Today", "Yesterday", "Last 7 Days", "Last 30 Days", "This Month", "Last Month", "This Year", "Last Year"];

// void _onPredefinedRangeSelected(String range) {
//   setState(() {
//     switch(range) {
//       case "Today":
//         _selectedDateRange = "${DateTime.now().toString().substring(0, 10)} - ${DateTime.now().toString().substring(0, 10)}";
//         break;
//       case "Yesterday":
//         DateTime yesterday = DateTime.now().subtract(Duration(days: 1));
//         _selectedDateRange = "${yesterday.toString().substring(0, 10)} - ${yesterday.toString().substring(0, 10)}";
//         break;
//       case "Last 7 Days":
//         _selectedDateRange = "${DateTime.now().subtract(Duration(days: 7)).toString().substring(0, 10)} - ${DateTime.now().toString().substring(0, 10)}";
//         break;
//       // Add more cases for other ranges...
//     }
//   });
// }



//   @override
//   Widget build(BuildContext context) {
//     Widget build(BuildContext context) {
//   return Column(
//     children: [
//       TextField(
//         onTap: () async {
//           _selectDateRange(context);
//         },
//         readOnly: true,
//         controller: TextEditingController(text: _selectedDateRange),
//         decoration: InputDecoration(
//           labelText: 'Date Range',
//           suffixIcon: Icon(Icons.calendar_today),
//         ),
//       ),
//       DropdownButton<String>(
//         value: null,
//         hint: Text('Select Predefined Range'),
//         items: _predefinedRanges.map((String value) {
//           return DropdownMenuItem<String>(
//             value: value,
//             child: Text(value),
//           );
//         }).toList(),
//         onChanged: (value) {
//           if (value != null) {
//             _onPredefinedRangeSelected(value);
//           }
//         },
//       ),
//     ],
//   );
// }

//   }
// }
