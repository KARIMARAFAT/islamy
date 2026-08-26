import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islamt/core/app_consts.dart';
import 'package:islamt/core/common_decorations.dart';
import 'package:islamt/features/home/tabs/quran_tab/quran_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Widget> tabs = [
    QuranTab(),
    Container(color: Colors.pink),
    Container(color: Colors.brown),
    Container(color: Colors.orange),
    Container(color: Colors.red),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
          CustomBottomNavigationBarItem(
            label: 'Quran',
            iconPath: AppConsts.quran,
            isSelected: currentIndex == 0,
          ),
          CustomBottomNavigationBarItem(
            label: 'Hadeeth',
            iconPath: AppConsts.hadeeth,
            isSelected: currentIndex == 1,
          ),
          CustomBottomNavigationBarItem(
            label: 'Sebha',
            iconPath: AppConsts.sebha,
            isSelected: currentIndex == 2,
          ),
          CustomBottomNavigationBarItem(
            label: 'Radio',
            iconPath: AppConsts.radio,
            isSelected: currentIndex == 3,
          ),
          CustomBottomNavigationBarItem(
            label: 'Time',
            iconPath: AppConsts.time,
            isSelected: currentIndex == 4,
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  BottomNavigationBarItem CustomBottomNavigationBarItem({
    required String label,
    required String iconPath,
    required bool isSelected,
  }) {
    return BottomNavigationBarItem(
      icon: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        // width: 50,
        // height: 35,
        decoration: isSelected
            ? CommonDecorations.selectedItemDecoration
            : null,

        child: SvgPicture.asset(
          iconPath,
          width: isSelected ? 25 : 20,
          // ignore: deprecated_member_use
          color: isSelected ? Colors.white : null,
        ),
      ),
      label: label,
    );
  }
}
