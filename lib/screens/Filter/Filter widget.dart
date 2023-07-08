import "package:flutter/material.dart";

class title extends StatelessWidget {
  const title({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Text(
        'Filter',
        style: TextStyle(fontSize: 30),
      ),
    );
  }
}

class IconsFields extends StatefulWidget {
  const IconsFields({super.key});

  @override
  State<IconsFields> createState() => _IconsFieldsState();
}

class _IconsFieldsState extends State<IconsFields> {
  List<String> major = [
    'Teaching',
    'cooking',
    'Sports',
    'Engineering',
    'medical',
    'Business ',
    'Art',
  ];
  List<String> majorimage = [
    'lib/assets/images/teacher.jpg',
    'lib/assets/images/cooking.jpg',
    'lib/assets/images/sports.jpg',
    'lib/assets/images/engineering.jpg',
    'lib/assets/images/medical.jpg',
    'lib/assets/images/Business.jpg',
    'lib/assets/images/art.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: double.infinity,
      child: ListView.builder(
        itemCount: major.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 8),
            child: GestureDetector(
              onTap: () {},
              child: Column(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(majorimage[index])),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      major[index],
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class place extends StatelessWidget {
  const place({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8, left: 25),
      child: Text(
        'place ',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

class placeOption extends StatefulWidget {
  const placeOption({super.key});

  @override
  State<placeOption> createState() => _placeOptionState();
}

class _placeOptionState extends State<placeOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(253, 253, 253, 1))),
                  onPressed: () {},
                  child: Text(
                    "onLine",
                    style: TextStyle(
                        color: Color.fromRGBO(205, 67, 58, 1), fontSize: 16),
                  ))),
          Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(250, 248, 248, 1))),
                  onPressed: () {},
                  child: Text(
                    "Off Line",
                    style: TextStyle(
                        color: Color.fromRGBO(205, 67, 58, 1), fontSize: 16),
                  ))),
        ],
      ),
    );
  }
}

class trainingstate extends StatelessWidget {
  const trainingstate({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15.0, bottom: 8, left: 25),
      child: Text(
        'State ',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

class trainingOption extends StatefulWidget {
  const trainingOption({super.key});

  @override
  State<trainingOption> createState() => _trainingOptionState();
}

class _trainingOptionState extends State<trainingOption> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(253, 253, 253, 1))),
                  onPressed: () {},
                  child: Text(
                    "Free",
                    style: TextStyle(
                        color: Color.fromRGBO(205, 67, 58, 1), fontSize: 18),
                  ))),
          Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(250, 248, 248, 1))),
                  onPressed: () {},
                  child: Text(
                    "paid",
                    style: TextStyle(
                        color: Color.fromRGBO(205, 67, 58, 1), fontSize: 18),
                  ))),
        ],
      ),
    );
  }
}

class Location extends StatelessWidget {
  const Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, top: 12, bottom: 8),
      child: Text(
        'Location',
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}

class locationOptions extends StatefulWidget {
  locationOptions({super.key});

  @override
  State<locationOptions> createState() => _locationOptionsState();
}

class _locationOptionsState extends State<locationOptions> {
  String dropdownvalue = 'Amman';
  // List of items in our dropdown menu
  var items = [
    'Amman',
    'Irbid',
    'Jaresh',
    'Mafraq',
    'Aqaba',
    'Zarqa',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 3),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Colors.white),
        child: ListTile(
          trailing: Icon(
            Icons.arrow_right,
            color: Color.fromRGBO(205, 67, 58, 1),
          ),
          leading: Icon(
            Icons.location_on_outlined,
            color: Color.fromRGBO(205, 67, 58, 1),
          ),
          title: DropdownButton(
            iconEnabledColor: Colors.white,
            value: dropdownvalue,
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            // After selecting the desired option,it will
            // change button value to selected value
            onChanged: (String? value) {
              setState(() {
                dropdownvalue = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}

class ApplyBotton extends StatefulWidget {
  const ApplyBotton({super.key});

  @override
  State<ApplyBotton> createState() => _ApplyBottonState();
}

class _ApplyBottonState extends State<ApplyBotton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 170.0, bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(250, 248, 248, 1))),
                  onPressed: () {},
                  child: Text(
                    "RESET",
                    style: TextStyle(
                        color: Color.fromRGBO(205, 67, 58, 1), fontSize: 18),
                  ))),
          Container(
              height: 45,
              width: MediaQuery.of(context).size.width * 0.4,
              child: ElevatedButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15))),
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromRGBO(205, 67, 58, 1))),
                  onPressed: () {},
                  child: Text(
                    "APPLY",
                    style: TextStyle(
                        color: Color.fromRGBO(241, 235, 235, 1), fontSize: 18),
                  ))),
        ],
      ),
    );
  }
}
