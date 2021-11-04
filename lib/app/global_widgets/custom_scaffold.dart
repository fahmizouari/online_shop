import 'package:flutter/material.dart';
import 'package:online_shop/app/utils/colors.dart';

import 'button_bottom_navigation_bar.dart';

class CustomScaffold extends StatelessWidget {
  final AppBar? appBar;
  final Widget body;
  int currentTab=0;
  CustomScaffold({Key? key, this.appBar, required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: body,
        extendBody: true,
      floatingActionButton: Container(
        height: 75,
        width: 75,
        child: FloatingActionButton(
          backgroundColor: orange,
          child: Container(
            child: Image.asset("assets/images/qr-code.png", height: 25, width: 25,),
          ),
          onPressed: () {},
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        color: white,
        notchMargin: 15,
        child: Container(
          height: 70,
          alignment: Alignment.bottomLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ButtonBottomNavigationBar(
                    icon: Icons.home,
                    color: currentTab == 0 ? orange : grey800,
                  ),
                  ButtonBottomNavigationBar(
                    icon: Icons.local_grocery_store_rounded,
                    color: currentTab == 1 ? orange : grey800,
                  ),
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  ButtonBottomNavigationBar(
                    icon: Icons.favorite,
                    color: currentTab == 2 ? orange : grey800,
                  ),
                  ButtonBottomNavigationBar(
                    icon: Icons.person_rounded,
                    color: currentTab == 3 ? orange : grey800,
                  ),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
