import 'package:flutter/material.dart';
import 'package:machine_test/widgets/dropdown_widget.dart';
import 'package:machine_test/widgets/country_state_dropdown.dart';
import 'package:machine_test/widgets/display_name.dart';
import 'package:machine_test/widgets/profile_info.dart';
import 'package:machine_test/widgets/url_navigator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = [
    CustomDropdown(),
    CountryStateDropdowns(),
    DisplayName(
      firstName: 'James',
      secondName: 'Bond ',
      prefix: 'Mr. ',
      suffix: '007',
    ),
    ProfileInfo(userId: 1),
    UrlNavigator(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Machine Test'),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task 3',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task 4',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Task 5',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurple,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}
