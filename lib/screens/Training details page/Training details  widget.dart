import 'package:flutter/material.dart';

import '../../Models/models.dart';

class CoverDetailsp extends StatefulWidget {
  const CoverDetailsp({super.key});

  @override
  State<CoverDetailsp> createState() => _CoverDetailspState();
}

class _CoverDetailspState extends State<CoverDetailsp> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://content.fortune.com/wp-content/uploads/2020/07/G500-2020-249-Orange-GettyImages-1185625023.jpg'),
              fit: BoxFit.cover)),
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 30, right: 15),
        child: Icon(
          Icons.share_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}

class OfferTitle extends StatelessWidget {
  const OfferTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
      child: Center(
        child: Text(
          'International Band Music Concert',
          style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class Date extends StatefulWidget {
  const Date({super.key});

  @override
  State<Date> createState() => _DateState();
}

class _DateState extends State<Date> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: DateTimelisttile(
        myicon: Icons.calendar_month_outlined,
        Date: '12 December 2023',
        subdate: 'Tuesday 4:00pm- 9:00pm',
      ),
    );
  }
}

class Locationinfo extends StatelessWidget {
  const Locationinfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0, left: 6),
      child: DateTimelisttile(
        myicon: Icons.location_on,
        Date: 'Gala Convenetion center',
        subdate: '36 Guid Street London, UK',
      ),
    );
  }
}

class Jobdes extends StatelessWidget {
  const Jobdes({super.key});

  @override
  Widget build(BuildContext context) {
    return JobDescribation(
      Jobdescribation:
          'Project managers play the lead role in planning, executing, monitoring, controlling, and closing out projects. They are accountable for the entire project scope, the project team and resources, the project budget, and the success or failure of the project.',
    );
  }
}

class requirements extends StatelessWidget {
  const requirements({super.key});

  @override
  Widget build(BuildContext context) {
    return Requirements(
      requirements:
          'Bachelor\'s degree in computer science, business, or a related field 5-8 years of project management and related experience rojet M anagement Professional (PMP) certification preferred Proven ability to solve problems creatively Strong familiarity with project management software tools, methodologies, and best practices Experience seeing projects through the full life cycle Excellent analytical skills Strong interpersonal skills and extremely resourceful Proven ability to complete projects according to outlined scope, budget, and timeline',
    );
  }
}

class ApplyButton extends StatefulWidget {
  const ApplyButton({super.key});

  @override
  State<ApplyButton> createState() => _ApplyButtonState();
}

class _ApplyButtonState extends State<ApplyButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(30),
        child: Container(
            height: 56,
            width: MediaQuery.of(context).size.width / 1.3,
            child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromRGBO(205, 67, 58, 1))),
                onPressed: () {},
                child: Text(
                  "Apply",
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ))));
  }
}
