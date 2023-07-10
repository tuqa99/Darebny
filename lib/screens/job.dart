import 'package:flutter/material.dart';

class Job {
  final String title;
  final String address;
  final String companyLogo;
  //final String timeAgo;
  final String date;
  //final String experienceLevel;
  //final String experienceLevelColor;

  bool isMyFav;

  Job(this.title, this.address, this.companyLogo, this.date, this.isMyFav);

  factory Job.fromJson(Map<String, dynamic> json) {
    return new Job(
        json['title'],
        json['address'],
        //json['timeAgo'],
        json['companyLogo'],
        json['date'],
        //json['experienceLevel'],
        // json['experienceLevelColor'],
        json['isMyFav']
    );

  } }