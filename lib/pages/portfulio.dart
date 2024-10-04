import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Portfulio extends StatelessWidget {
  const Portfulio({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      maxRadius: 100,
                      backgroundImage: AssetImage(
                          "assets/WhatsApp Image 2024-10-04 at 19.20.47_d8272c2c.jpg"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "I'm omar attia",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "ite5 school shourq- gnb AOU lonha blue bntl3 alsa3a 03:30 Pm 3m 5aled byd7k 3lina fy al shebsy w bygyb 7agat mkat3a w ana 7alia wna b3ml al task dy rgly mtgbsa 3ny tmzg 2rbta :) wkman ana 7alia 43ri 2sir 3l4an 7l2to fy al agaza ana b2a sakn fy 2l obour 3ndy 18   ",
                style: TextStyle( color: Colors.white70, fontSize: 15 ,fontWeight: FontWeight.w600,),
              ),
               SizedBox(
                height: 50,
              ),
                Row( mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: InkWell(
                         onTap: 
                           _launchInstgram
                         ,
                        child: CircleAvatar(
                              backgroundImage: AssetImage("assets/R.png"),maxRadius: 15,
                      )),
                    ),

                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: IconButton(onPressed: _launchFacebook, icon: Icon(Icons.facebook),
                        iconSize: 35,),
                      ),
                                    TextButton(onPressed: _launchLinkedIn, child: Text("Linked In", style: TextStyle(color: Colors.blue,fontSize: 15,fontWeight: FontWeight.bold),))
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}

final Uri _url = Uri.parse('https://www.instagram.com/_omar_attia_/');


Future<void> _launchInstgram() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}


final Uri _url2 = Uri.parse('https://www.facebook.com/omar.attia.92754');


Future<void> _launchFacebook() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}


final Uri _url3 = Uri.parse('https://www.linkedin.com/in/omar-attia-22261121b/');


Future<void> _launchLinkedIn() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}