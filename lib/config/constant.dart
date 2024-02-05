/*
this is constant pages
 */

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const String APP_NAME = 'AldanaBeauty';

// color for apps
const Color PRIMARY_COLOR = Color(0xFF07ac12);
const Color ASSENT_COLOR = Color(0xFFe75f3f);

const Color CHARCOAL = Color(0xFF515151);
const Color BLACK_GREY = Color(0xff777777);
const Color SOFT_GREY = Color(0xFFaaaaaa);
const Color SOFT_BLUE = Color(0xff01aed6);

const String ERROR_OCCURED = 'Error occured, please try again later';

const int LIMIT_PAGE = 8;

const String GLOBAL_URL = 'https://aldanabackend.aldanabeauty.com/';
//const String GLOBAL_URL = 'http://192.168.0.4/devkit';
//const String GLOBAL_URL = 'http://192.168.100.9/devkit';

const String LOCAL_IMAGES_URL = 'assets/images';
String formatDate(String date) {
  // Assuming that couponData.enddate is a string representing a date
  // You might need to parse it to DateTime if it's not already a DateTime object
  DateTime dateTime = DateTime.parse(date);

  // Choose the date format you want, for example: 'MM/dd/yyyy'
  String formattedDate = DateFormat('MM/dd/yyyy').format(dateTime);

  return formattedDate;
}