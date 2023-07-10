import 'dart:convert';

import 'search_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'job.dart';
List<dynamic> jobList = [];

class ListingPage extends StatefulWidget {
  const ListingPage({Key? key}) : super(key: key);

  @override
  State<ListingPage> createState() => _ListingPageState();
}

class _ListingPageState extends State<ListingPage> {
  //List<dynamic> jobList = [];
  Future<void> readJson() async {
    final String response = await rootBundle.loadString('lib/jobs.json');
    final data = await json.decode(response);

    setState(() {
      jobList = data['jobs']
          .map((data) => Job.fromJson(data)).toList();
      print("*****************${jobList.length}");
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    readJson();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.grey.withOpacity(.15),
      appBar: AppBar(
        //toolbarHeight: 45,
        backgroundColor: Colors.grey.withOpacity(.15),
        elevation: 0,
        leadingWidth: 20,
        leading: IconButton(
            padding: EdgeInsets.only(left: 20),
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.grey.shade800,)
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: IconButton(
                iconSize: 30,
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SearchPage()),
                  );
                },
                icon: Icon(Icons.search, color: Colors.grey.shade800,)
            ),
          )
        ],

        title: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text("Offers",style: TextStyle(color: Colors.black,fontSize: 22),),
        ),
      ),
      body: Container(
        color: Colors.grey.withOpacity(.15),
        child: ListView.builder(
            padding: EdgeInsets.only(left:20,right: 20,bottom: 20,top:10),
            itemCount: jobList.length,
            itemBuilder: (context, index) {
              return JobComponent(job: jobList[index]);
            }),
      ),
    );
  } }


class JobComponent extends StatefulWidget {
  final Job job;

  JobComponent({required this.job});

  @override
  _JobComponentState createState() => _JobComponentState();
}

class _JobComponentState extends State<JobComponent> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.4),
            spreadRadius: 0,
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Row(
                  children: [
                    Container(
                      width: 60,
                      height: 60,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset(widget.job.companyLogo),
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.job.date,
                            style: TextStyle(
                              color: Colors.red.shade800,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            widget.job.title,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.grey[500],
                                size: 15,
                              ),
                              SizedBox(width: 5),
                              Text(
                                widget.job.address,
                                style: TextStyle(color: Colors.grey[500]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: AnimatedContainer(
                  height: 35,
                  padding: EdgeInsets.all(5),
                  duration: Duration(milliseconds: 300),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: isFavorite ? Colors.red.shade100 : Colors.grey.shade300,
                    ),
                  ),
                  child: Center(
                    child: isFavorite
                        ? Icon(Icons.bookmark, color: Colors.red)
                        : Icon(Icons.bookmark_border_outlined, color: Colors.grey.shade600),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}










class SearchBarDelegate extends SearchDelegate<String> {

  @override
  ThemeData appBarTheme(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    return theme.copyWith(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.black,
            fontSize: 18,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.grey),
        border: InputBorder.none,
      ),
    );
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, " ");
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Implement your search results here
    return Center(
      child: Text('Search Results for: $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Implement your search suggestions here
    return Container(
      child: ListView.builder(
          padding: EdgeInsets.only(left:20,right: 20,bottom: 20,top:10),
          itemCount: jobList.length,
          itemBuilder: (context, index) {
            return JobComponent(job: jobList[index]);
          }),
    );
  }
}
