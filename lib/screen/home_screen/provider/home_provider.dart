import 'package:flutter/cupertino.dart';
import 'package:gallery/screen/home_screen/modal/modal_screen.dart';


class HomeProvider extends ChangeNotifier
{

  List<ModalScreen> image=[

    ModalScreen(image: "assets/image/1_.jpeg",),
    ModalScreen(image: "assets/image/2_.jpg",),
    ModalScreen(image: "assets/image/3_.jpg",),
    ModalScreen(image: "assets/image/4_.jpg",),
    ModalScreen(image: "assets/image/5_.jpg",),
    ModalScreen(image: "assets/image/6_.jpg",),
    ModalScreen(image: "assets/image/7_.jpg",),
    ModalScreen(image: "assets/image/8_.jpg",),
    ModalScreen(image: "assets/image/9_.jpg",),
    ModalScreen(image: "assets/image/10_.jpg",),
    ModalScreen(image: "assets/image/11_.jpg",),
    ModalScreen(image: "assets/image/12_.jpg",),
    ModalScreen(image: "assets/image/13_.jpg",),
    ModalScreen(image: "assets/image/14_.jpg",),
    ModalScreen(image: "assets/image/15_.jpg",),
    ModalScreen(image: "assets/image/16_.jpg",),
    ModalScreen(image: "assets/image/17_.jpg",),
    ModalScreen(image: "assets/image/18_.jpg",),
    ModalScreen(image: "assets/image/19_.jpg",),
    ModalScreen(image: "assets/image/20_.jpg",),
    ModalScreen(image: "assets/image/nat.jpg",),
  ];

  List<ModalScreen> icon=[
    ModalScreen(icon: "assets/image/github-logo.png"),
    ModalScreen(icon: "assets/image/whatsapp.png",),
    ModalScreen(icon: "assets/image/telegram.png"),
    ModalScreen(icon: "assets/image/instagram.png"),
  ];
  int i=0;

  void selectIndex(int value) {
    i = value;
    notifyListeners();
    print(i);
  }


}