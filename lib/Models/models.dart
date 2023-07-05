import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DateTimelisttile extends StatelessWidget {
  DateTimelisttile(
      {super.key,
      required this.Date,
      required this.subdate,
      required this.myicon});
  String Date = '';
  String subdate = '';
  IconData myicon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        decoration: BoxDecoration(
            color: Color.fromRGBO(172, 169, 169, 0.388),
            borderRadius: BorderRadius.circular(10)),
        child: Icon(
          myicon,
          size: 29,
          color: Color.fromRGBO(205, 67, 58, 1),
        ),
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.13,
      ),
      title: Text(
        Date,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        subdate,
        style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(207, 105, 104, 104)),
      ),
    );
  }
}

// ignore: must_be_immutable
class JobDescribation extends StatelessWidget {
  JobDescribation({required this.Jobdescribation});
  String Jobdescribation = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(
            'Job Description',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            Jobdescribation,
            style: TextStyle(
                fontSize: 14,
                color: Color.fromARGB(207, 105, 104, 104),
                height: 1.5),
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class Requirements extends StatelessWidget {
  Requirements({required this.requirements});
  String requirements = '';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(
            'Requirements',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Text(
            requirements,
            style: TextStyle(fontSize: 14, color: Colors.grey, height: 1.5),
          ),
        )
      ],
    );
  }
}
