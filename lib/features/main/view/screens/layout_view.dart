import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:talabat/core/manager/assets_manager.dart';
import 'package:talabat/core/styles/app_color.dart';
import 'package:talabat/features/main/view/screens/account_screen.dart';
import 'package:talabat/features/main/view/screens/home_screen.dart';
import 'package:talabat/features/main/view/screens/search_screen.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  List<Widget> pages = [
    const HomeScreen(),
    const SearchScreen(),
    const AccountScreen(),
  ];
  int currentPage = 0;
  LocationData? userLocation;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is LocationData) {
      userLocation = args;
      // Pass location to the HomeScreen
      pages[0] = HomeScreen(userLocation: userLocation);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          onTap: (value) {
            setState(() {
              currentPage = value;
            });
          },
          selectedItemColor: AppColor.primary,
          elevation: 10,
          currentIndex: currentPage,
          items: [
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                IconAssetsManager.homeIcon,
                width: screenSize.width * .07,
                height: screenSize.width * .07,
                color: AppColor.primary,
              ),
              icon: Image.asset(
                IconAssetsManager.homeIcon,
                width: screenSize.width * .07,
                height: screenSize.width * .07,
                color: Colors.grey,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                IconAssetsManager.searchIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: AppColor.primary,
              ),
              icon: Image.asset(
                IconAssetsManager.searchIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: Colors.grey,
              ),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              activeIcon: Image.asset(
                IconAssetsManager.userIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: AppColor.primary,
              ),
              icon: Image.asset(
                IconAssetsManager.userIcon,
                width: screenSize.width * .06,
                height: screenSize.width * .06,
                color: Colors.grey,
              ),
              label: 'Account',
            ),
          ],
        ),
        body: pages[currentPage],
      ),
    );
  }
}
