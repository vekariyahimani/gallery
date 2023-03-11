import 'package:flutter/material.dart';
import 'package:gallery/screen/home_screen/provider/home_provider.dart';
import 'package:provider/provider.dart';

class Pikimage extends StatefulWidget {
  const Pikimage({Key? key}) : super(key: key);

  @override
  State<Pikimage> createState() => _PikimageState();
}

class _PikimageState extends State<Pikimage> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProviderfalse = Provider.of(context, listen: false);
    homeProvidertrue = Provider.of(context, listen: true);
    int i=ModalRoute.of(context)!.settings.arguments as int;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.blueGrey,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Container(
                  height: 400,
                  width: double.infinity,

                  child: PageView.builder(
                    controller: PageController(initialPage: i),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    '${homeProviderfalse!.image[index].image}'),
                                alignment: Alignment.center,fit: BoxFit.fitWidth)),
                      );
                    },
                    itemCount: homeProviderfalse!.image.length,
                  ),
                ),
              ],
            )));
  }
}
