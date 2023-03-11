import 'package:flutter/material.dart';
import 'package:gallery/screen/home_screen/provider/home_provider.dart';
import 'package:gallery/screen/home_screen/view/home.dart';
import 'package:gallery/screen/image_screen/view/image.dart';
import 'package:gallery/screen/pikimage/view/pikimage.dart';
import 'package:gallery/screen/preson/view/person_screen.dart';
import 'package:gallery/screen/video/view/video_screen.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    ChangeNotifierProvider(
      create: (context) =>HomeProvider() ,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => Home(),
          'video':(context) => VideoScreen(),
          'person':(context) => PersonScreen(),
          'pik': (context) => Pikimage(),
          'image':(context) => ImageScreen(),
        },
      ),
    )
  );
}