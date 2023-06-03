import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_identificator/screens/history_tab_screen.dart';
import 'package:plant_identificator/screens/flower_tab_screen.dart';
import 'package:plant_identificator/screens/setting_tab_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 1;

  List screens = [
    const HistoryTabScreen(),
    const FlowerTabScreen(),
    const SettingTabScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        currentIndex: _currentIndex,
        selectedFontSize: 0,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/clock.svg',
            ),
            label: '',
            activeIcon: Column(
              children: [
                SvgPicture.asset(
                  'assets/images/greenClock.svg',
                ),
                const SizedBox(
                  height: 5,
                ),
                const SmallBall()
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/flower.svg',
            ),
            label: '',
            activeIcon: Column(
              children: [
                SvgPicture.asset('assets/images/greenFlower.svg'),
                const SizedBox(
                  height: 5,
                ),
                const SmallBall()
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/images/setting.svg',
            ),
            label: '',
            activeIcon: Column(
              children: [
                SvgPicture.asset('assets/images/greenSetting.svg'),
                const SizedBox(
                  height: 5,
                ),
                const SmallBall(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SmallBall extends StatelessWidget {
  const SmallBall({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      height: 5,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Color(0xFF007B21),
      ),
    );
  }
}
