import 'package:darebny/screens/Filter/Filter%20widget.dart';
import 'package:flutter/material.dart';

class FilterPag extends StatefulWidget {
  const FilterPag({super.key});

  @override
  State<FilterPag> createState() => _FilterPagState();
}

class _FilterPagState extends State<FilterPag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          color: Colors.black,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Color.fromRGBO(228, 225, 225, 0.973),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  title(),
                  IconsFields(),
                  Date(),
                  DateOption(),
                  trainingstate(),
                  trainingOption(),
                  Location(),
                  locationOptions(),
                  ApplyBotton()
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
