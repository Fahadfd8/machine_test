import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  final ValueChanged<String>? onChanged;

  const CustomDropdown({Key? key, this.onChanged}) : super(key: key);

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String dropdownValue = 'View'; // Initial dropdown value

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 3,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'More Actions:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_drop_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.black, fontSize: 16),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  setState(() {
                    dropdownValue = newValue;
                  });
                  if (widget.onChanged != null) {
                    widget.onChanged!(dropdownValue);
                  }
                }
              },
              items: <String>['View', 'Edit', 'Send', 'Delete']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: value == 'Delete'
                      ? Text(value, style: TextStyle(color: Colors.red, fontSize: 16))
                      : Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
