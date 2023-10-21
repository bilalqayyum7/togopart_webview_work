
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:togopart_project/home_secreen.dart';
import 'package:togopart_project/splash_secreen.dart';

void main(){
  runApp ( TogopartsApp() );
}
class TogopartsApp extends StatelessWidget {
  const TogopartsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Togoparts",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellowAccent),

      ),
      home: MySplashSecreen(),
    );
  }
}
