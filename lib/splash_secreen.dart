import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:togopart_project/home_secreen.dart';

class MySplashSecreen extends StatefulWidget {
  const MySplashSecreen({super.key});

  @override
  State<MySplashSecreen> createState() => _MySplashSecreenState();
}

class _MySplashSecreenState extends State<MySplashSecreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 10), (){
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MyHomeSecreen())
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          children: const [
            SizedBox(height: 210,),
            Image(image: AssetImage("assets/splash/splash_logo@2x.png"), width: 150,),

            SizedBox(height: 250,),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text("www.togoparts.com", style: TextStyle(fontSize: 13, color: Colors.yellow),),
                    Text("Singapore's Most Addictive Bycycle", style: TextStyle(fontSize: 14),),
                    Text("Marketplace", style: TextStyle(fontSize: 14),),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}



