import 'package:flutter/material.dart';
import 'package:gallery/screen/home_screen/provider/home_provider.dart';
import 'package:provider/provider.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({Key? key}) : super(key: key);

  @override
  State<ImageScreen> createState() => _ImageState();
}

class _ImageState extends State<ImageScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of(context, listen: false);
    homeProvidertrue = Provider.of(context, listen: true);
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                    image: AssetImage("assets/image/leave.jpg"),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50, left: 130, right: 130),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Gallery",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 50,
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.black54,
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "20 Pictures",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 230),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40),
                      topLeft: Radius.circular(40))),
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(top: 250),
              child: Container(
                margin: EdgeInsets.all(5),
                child: GridView.builder(
                  gridDelegate:
                      SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, 'pik',arguments: index);
                      },
                      child: Container(
                        height: 200,
                        width: 200,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: AssetImage(
                                    '${homeProviderfalse!.image[index].image}'),fit: BoxFit.cover)),
                      ),
                    );
                  },itemCount: homeProviderfalse!.image.length,
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
