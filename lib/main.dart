import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:haseeb/deshboard.dart';
import 'package:haseeb/reprint.dart';
import 'package:haseeb/selecthost.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),

   // home: selecthost(),
    //home: SelectHostPage(),
     //home: DownloadPage(),
     home: CIMBHomePage(),
     // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
