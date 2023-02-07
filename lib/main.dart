import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gridview_sample/Tourism_1/tourismHomePage.dart';
import 'package:gridview_sample/farmerappui/Home.dart';
import 'package:gridview_sample/freshzoneui/farmers_freshzone.dart';
import 'package:gridview_sample/gridviewsample.dart';
import 'package:gridview_sample/hotel%20ui/hotelHome.dart';
import 'package:gridview_sample/hotelBookingUi/homePage.dart';
import 'package:gridview_sample/nav/navdrawar.dart';
import 'package:gridview_sample/profilui.dart/appbar.dart';

import 'package:gridview_sample/whatsapp/tabs.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home1(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.yellow
            //color: Color(0xFF075E55),
            ),
      ),
    ),
  );
}
