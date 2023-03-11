import 'package:bottom_bar_matu/utils/app_utils.dart';
import 'package:flutter/material.dart';
import 'package:gallery/screen/home_screen/modal/modal_screen.dart';
import 'package:gallery/screen/home_screen/provider/home_provider.dart';
import 'package:provider/provider.dart';

class VideoScreen extends StatefulWidget {
  const VideoScreen({Key? key}) : super(key: key);

  @override
  State<VideoScreen> createState() => _VideoState();
}

class _VideoState extends State<VideoScreen> {

  List image=[
    "assets/image/1_.jpeg",
    "assets/image/2_.jpg",
    "assets/image/3_.jpg",
    "assets/image/4_.jpg",
    "assets/image/5_.jpg",
    "assets/image/6_.jpg",
    "assets/image/7_.jpg",
    "assets/image/8_.jpg",
    "assets/image/9_.jpg",
    "assets/image/10_.jpg",
    "assets/image/11_.jpg",
    "assets/image/12_.jpg",
    "assets/image/13_.jpg",
    "assets/image/14_.jpg",
    "assets/image/15_.jpg",
    "assets/image/16_.jpg",
    "assets/image/17_.jpg",
    "assets/image/18_.jpg",
    "assets/image/19_.jpg",
    "assets/image/20_.jpg",
    "assets/image/nat.jpg",

  ];

  List name=["Video--1",
    "Video--2",
        "Video--3",
        "Video--4",
        "Video--5",
        "Video--6",
        "Video--7",
        "Video--8",
        "Video--9",
        "Video--10",
        "Video--11",
        "Video--12",
        "Video--13",
        "Video--14",
        "Video--15",
        "Video--16",
        "Video--17",
        "Video--18",
        "Video--19",
        "Video--20",
        "Video--21",
  ];

  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {

    homeProviderfalse = Provider.of(context, listen: false);
    homeProvidertrue = Provider.of(context, listen: true);

    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blueGrey,
      body: ListView.builder(itemBuilder:  (context, index) {
        return Box(image[index], name[index]);
      },itemCount: homeProviderfalse!.image.length,),
    ));
  }
  Widget Box(String image,name)
  {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white70
      ),
      margin: EdgeInsets.all(14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(width: 10,),
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("${image}"),
              ),
              SizedBox(width: 30,),
              Text("${name}",style: TextStyle(color: Colors.blueGrey.shade800,fontSize: 16,),),

            ],
          ),


          Padding(
            padding: const EdgeInsets.all(10),
            child: Icon(Icons.play_circle_outline,color: Colors.blueAccent.shade400,size: 40,),
          )
        ],
      ),
    );
  }





}
