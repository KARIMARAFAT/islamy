import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamt/core/app_consts.dart';
import 'package:islamt/core/common_decorations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    Container(color: Colors.amber),
    Container(color: Colors.pink),
    Container(color: Colors.brown),
    Container(color: Colors.orange),
    Container(color: Colors.red),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              // width: 50,
              // height: 35,
              decoration: currentIndex == 0
                  ? CommonDecorations.selectedItemDecoration
                  : null,

              child: SvgPicture.asset(
                AppConsts.quran,
                width: currentIndex == 0 ? 25 : 20,
                // ignore: deprecated_member_use
                color: currentIndex == 0 ? Colors.white : null,
              ),
            ),
            label: 'Quran',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.home),
          //   label: AppConsts.hadeeth,
          // ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              // width: 50,
              // height: 35,
              decoration: currentIndex == 1
                  ? CommonDecorations.selectedItemDecoration
                  : null,

              child: SvgPicture.asset(
                AppConsts.hadeeth,
                width: currentIndex == 1 ? 25 : 20,
                // ignore: deprecated_member_use
                color: currentIndex == 1 ? Colors.white : null,
              ),
            ),
            label: 'Hadeeth',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              // width: 50,
              // height: 35,
              decoration: currentIndex == 2
                  ? CommonDecorations.selectedItemDecoration
                  : null,

              child: SvgPicture.asset(
                AppConsts.sebha,
                width: currentIndex == 2 ? 25 : 20,
                // ignore: deprecated_member_use
                color: currentIndex == 2 ? Colors.white : null,
              ),
            ),
            label: 'Sebha',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              // width: 50,
              // height: 35,
              decoration: currentIndex == 3
                  ? CommonDecorations.selectedItemDecoration
                  : null,

              child: SvgPicture.asset(
                AppConsts.radio,
                width: currentIndex == 3 ? 25 : 20,
                // ignore: deprecated_member_use
                color: currentIndex == 3 ? Colors.white : null,
              ),
            ),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
              // width: 50,
              // height: 35,
              decoration: currentIndex == 4
                  ? CommonDecorations.selectedItemDecoration
                  : null,

              child: SvgPicture.asset(
                AppConsts.time,
                width: currentIndex == 4 ? 25 : 20,
                // ignore: deprecated_member_use
                color: currentIndex == 4 ? Colors.white : null,
              ),
            ),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
