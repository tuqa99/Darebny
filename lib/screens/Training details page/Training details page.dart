import 'package:darebny/screens/Training%20details%20page/Training%20details%20%20widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TrainingDetails extends StatefulWidget {
  const TrainingDetails({super.key});

  @override
  State<TrainingDetails> createState() => _TrainingDetailsState();
}

class _TrainingDetailsState extends State<TrainingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: Text(
          'Training details',
        ),
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.white.withOpacity(.5),
              ),
              height: MediaQuery.of(context).size.height * 0.09,
              width: MediaQuery.of(context).size.width * 0.09,
              child: Icon(
                Icons.bookmark_outlined,
                color: Colors.white,
              ),
            ),
          )
        ],
        backgroundColor: Colors.transparent,
        leading: BackButton(),
        elevation: 0,
      ),
      body: Container(
        color: Color.fromRGBO(218, 218, 218, 0.39),
        child: Column(
          children: [
            CoverDetailsp(),
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  OfferTitle(),
                  Date(),
                  Locationinfo(),
                  Jobdes(),
                  requirements(),
                  ApplyButton(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
