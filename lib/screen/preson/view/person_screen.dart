import 'package:flutter/material.dart';

class PersonScreen extends StatefulWidget {
  const PersonScreen({Key? key}) : super(key: key);

  @override
  State<PersonScreen> createState() => _Page1State();
}

class _Page1State extends State<PersonScreen> {
  
  
  List icon=["assets/image/github-logo.png",
  "assets/image/instagram.png",
  "assets/image/telegram.png",
  "assets/image/whatsapp.png"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        title: Text(
          " View Profile",
          style: TextStyle(color: Colors.white, fontSize: 20, letterSpacing: 1),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            height: 330,
            width: double.infinity,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                "assets/image/h.jpg",
              ),
              fit: BoxFit.cover,
            )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 290),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60),
                      topRight: Radius.circular(60))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 310),
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/image/h.jpg"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        Text(
                          "Himani Vekariya",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        Text(
                          "Flutter Developer",
                          style: TextStyle(color: Colors.grey, fontSize: 12),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 3,
                  width: 320,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                ),
                SizedBox(
                  height: 15,
                ),
               

              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 400,left: 20),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Other Account",style: TextStyle(color: Colors.white54,fontSize: 18),),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset("assets/image/whatsapp.png",color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("+98 5242 2342",style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(Icons.email_outlined,color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("himnaivekariya109@gmail.com",style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset("assets/image/telegram.png",color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("himnai_vekariya109",style: TextStyle(color: Colors.grey),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Image.asset("assets/image/github-logo.png",color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("Vekariya Himani",style: TextStyle(color: Colors.grey),)
                ],
              ),

              SizedBox(height: 15,),
              Row(
                children: [
                  Image.asset("assets/image/instagram.png",color: Colors.white,),
                  SizedBox(width: 20,),
                  Text("hv__109",style: TextStyle(color: Colors.grey),)
                ],
              ),





            ],
          ),)
          
        ],
      ),
    ));
  }


}
