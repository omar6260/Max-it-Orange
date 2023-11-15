import 'package:flutter/material.dart';
import 'package:max_it_orange/src/features/Account/presentation/screens/account_screen.dart';
import 'package:max_it_orange/src/features/home/presentation/screens/home_screen.dart';
import 'package:max_it_orange/src/features/my-line/presentation/screen/my_line_screen.dart';
import 'package:max_it_orange/src/features/scanner/presentation/screen/scanner_screen.dart';
import 'package:max_it_orange/src/features/shop/presentation/screen/shop_screen.dart';

import '../../../../constants/app_color.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    AccountScreen(),
    MyLineScreen(),
    ShopScreen(),
    ScannerScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColor.iconlightColor,
              ),
              activeIcon: const Icon(
                Icons.home,
                color: Colors.deepOrangeAccent,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: AppColor.iconlightColor,
              ),
              activeIcon: const Icon(
                Icons.search,
                color: Colors.deepOrangeAccent,
              ),
              label: 'Orange Money',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.line_axis, color: AppColor.iconlightColor),
              activeIcon: const Icon(
                Icons.line_axis,
                color: Colors.deepOrangeAccent,
              ),
              label: 'Ma ligne',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shop, color: AppColor.iconlightColor),
              activeIcon: const Icon(
                Icons.shop,
                color: Colors.deepOrangeAccent,
              ),
              label: 'Boutique',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart, color: AppColor.iconlightColor),
              activeIcon: const Icon(
                Icons.shopping_cart,
                color: Colors.deepOrangeAccent,
              ),
              label: 'Scanner',
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrangeAccent,
        onPressed: () {},
        child: Image.asset('assets/images/ibou.png'),
      ),
    );
  }
}
