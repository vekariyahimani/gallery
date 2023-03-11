import 'package:bottom_bar_matu/bottom_bar/bottom_bar_bubble.dart';
import 'package:bottom_bar_matu/bottom_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:gallery/screen/home_screen/provider/home_provider.dart';
import 'package:gallery/screen/image_screen/view/image.dart';
import 'package:gallery/screen/preson/view/person_screen.dart';
import 'package:gallery/screen/video/view/video_screen.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  List screen=[ImageScreen(),VideoScreen(),PersonScreen()];
  

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of(context, listen: false);
    homeProvidertrue = Provider.of(context, listen: true);

    return SafeArea(
      child: Scaffold(

          body: screen[homeProvidertrue!.i],

        bottomNavigationBar: BottomBarBubble(
          selectedIndex: homeProvidertrue!.i,
            backgroundColor: Colors.black,
            onSelect: (value){
              homeProviderfalse!.selectIndex(value);
            },
            items: [
              BottomBarItem(iconData: Icons.home,),
              BottomBarItem(iconData: Icons.videocam_outlined),
              BottomBarItem(iconData: Icons.person_pin_outlined)

            ],

          ),
        ),
    );
  }
}
