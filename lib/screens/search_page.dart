import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const_values.dart';
import 'job.dart';
import 'listing_page.dart';
class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.withOpacity(.15),
      body: Container(
        color: Colors.grey.withOpacity(.15),
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leadingWidth: 20,
              leading: IconButton(
                padding: EdgeInsets.only(left: 20),
                onPressed: () {
                  Navigator.pushReplacement( context,
                    MaterialPageRoute(builder: (context) => ListingPage()),
                  );},
                icon: Icon(Icons.arrow_back, color: Colors.grey.shade800,),
              ),
              title: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left:20,right: 20,bottom: 20,top:5),
              sliver: SliverToBoxAdapter(
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 320,
                      child: TextField(
                        cursorColor: Colors.grey,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                          filled: true,
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search, color: Colors.grey),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                            borderSide: BorderSide.none,
                          ),
                          hintText: "Search e.g Software Developer",
                          hintStyle: TextStyle(fontSize: 14),
                        ),
                      ),
                    ),
                    //SizedBox(width: 5,),
                    Spacer(),
                    Container(
                      width: 37,
                      height: 37,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ConsValues.BUTTON_COLOR,//Colors.red.shade800,
                      ),
                      child: Center(
                        child: IconButton(
                          onPressed: () { },
                          icon: Icon(Icons.filter_list_rounded,color: Colors.white,size: 23,),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(left:20,right: 20,bottom: 20,top:5),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    return JobComponent(job: jobList[index]);
                  },
                  childCount: jobList.length,

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
