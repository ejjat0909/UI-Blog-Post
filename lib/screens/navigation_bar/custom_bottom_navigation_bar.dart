import 'package:app_training/constant.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final int defaultSelectedIndex;
  final Function(int) onChange;
  final List<IconData> iconList;

  const CustomBottomNavigationBar({
    this.defaultSelectedIndex = 0,
    required this.iconList,
    required this.onChange,
  });

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<IconData> _iconList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _selectedIndex = widget.defaultSelectedIndex;
    _iconList = widget.iconList;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _navBarItemList = [];
    //Get icon list and add into _navBarItemList
    for (var i = 0; i < _iconList.length; i++) {
      _navBarItemList.add(
        buildNavBarItem(_iconList[i], i),
      );
    }
    //Show item in icon in row inside bottom navigation bar
    return Row(
      children: _navBarItemList,
    );
  }

  //Update selected page's icon and update index for body content used
  Widget buildNavBarItem(IconData icon, int index) {
    return GestureDetector(
      onTap: () {
        widget.onChange(index);
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: MediaQuery.of(context).size.width /
            _iconList.length, //Suitable for device size and number of icon
        decoration: index == _selectedIndex
            ? BoxDecoration(
                border: const Border(
                  top: BorderSide(
                    width: 3,
                    color: kPrimaryColor,
                  ), //Top border line for selected icon
                ),
                color: index == _selectedIndex
                    ? kPrimaryColor
                        .withOpacity(0.1) //Color of selected background
                    : Colors.white,
              )
            : BoxDecoration(),
        child: Icon(
          icon,
          color: index == _selectedIndex
              ? kPrimaryColor
              : Colors.grey, //Color of selected icon
        ),
      ),
    );
  }
}
