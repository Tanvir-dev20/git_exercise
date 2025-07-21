// ignore_for_file: must_be_immutable

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'todoGetx/todoUi.dart';

main(){
  runApp(
    DevicePreview(builder: (context)=> const MyApp(),
    
  ));
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   return GetMaterialApp(
      home: HomePages(),
      theme: ThemeData(primarySwatch: Colors.blue,useMaterial3: false),
      debugShowCheckedModeBanner: false,
    );
  }
  
}



// class HomeActivity extends StatelessWidget{
//   String messages;
//    HomeActivity(this.messages,{super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(messages),
//       centerTitle: true,
//       titleSpacing: 10,
//       backgroundColor: Colors.blueAccent,
//       toolbarHeight: 60,
//       toolbarOpacity: 1,
//       elevation: 10,
//       ),
//     );

//     }
// }