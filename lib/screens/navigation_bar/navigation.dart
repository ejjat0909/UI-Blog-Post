import 'package:app_training/screens/homepage/homepage.dart';
import 'package:app_training/screens/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:app_training/screens/post/post.dart';
import 'package:app_training/screens/profile/profile.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});
  
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedItem = 0;
  //Options or page show in body when selected
  static final List<Widget> _widgetOptions = <Widget>[
    const HomePage(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        iconList: const [
          Icons.home_outlined,
          Icons.person_outline_outlined,
        ],
        onChange: (val) {
          setState(() {
            _selectedItem = val;
          });
        },
        defaultSelectedIndex: 0,
      ),
      //Body content of selected option from navigation bar
      body: Center(
        child: _widgetOptions.elementAt(_selectedItem),
      ),
    );
  }
}
