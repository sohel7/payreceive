import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:payreceiveapp/screens/auth/my_account.dart';
import 'package:payreceiveapp/screens/auth/my_walet.dart';
import 'package:payreceiveapp/screens/home_page.dart';

class AppLaout extends StatefulWidget {
  const AppLaout({super.key});

  @override
  State<AppLaout> createState() => _AppLaoutState();
}

class _AppLaoutState extends State<AppLaout> {
int selectedIndex=0;

  // Bottom Navbar Item Function
  bottomNavbarItem({icon,activeicon, label}) {
    return  BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.symmetric(vertical:6, ),
        child: Icon(icon),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.symmetric(vertical:6, ),
        child: Icon(activeicon),
      ) ,
      label: label);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('images/icons/app_icon.png', height: 30,),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.chat_bubble_2)),
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.money_dollar_circle)),
          IconButton(onPressed: (){}, icon: const Icon(CupertinoIcons.bell)),
        ],
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: const [
          HomePage(),
          MyWalet(),
          MyAccount()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          bottomNavbarItem(
              icon:CupertinoIcons.house,
              activeicon: CupertinoIcons.house_fill,
              label: 'Home'),
          bottomNavbarItem(
              icon:CupertinoIcons.money_dollar_circle,
              activeicon: CupertinoIcons.money_dollar_circle_fill,
              label: 'My account'),
          bottomNavbarItem(
              icon:CupertinoIcons.person,
              activeicon: CupertinoIcons.person_fill,
              label: 'User'),
        ],
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
        currentIndex:selectedIndex,
        onTap: (value)=> setState(() {
          selectedIndex=value;
        }),
      ),

    );
  }
}
