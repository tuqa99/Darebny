import 'package:flutter/material.dart';
import 'SignIn.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Notifications",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Color.fromRGBO(218, 218, 218, 0.39),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => SignIn(),
            ));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [ Container(
            width: screenSize.width,
            height: screenSize.height,
            color: Color.fromRGBO(218, 218, 218, 0.39),
            child: ListView.builder(
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  // leading: const Icon(Icons.list),
                  trailing: const Text(
                    "Time",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Text above buttons",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          // ElevatedButton(  style: ButtonStyle(
                          //   shape: MaterialStateProperty.all(
                          //     RoundedRectangleBorder(
                          //       borderRadius: BorderRadius.circular(5),
                          //     ),
                          //   ),
                          //   backgroundColor:
                          //   MaterialStateProperty.all(Color.fromRGBO(255, 255, 255,0.7)),
                          // ),
                          //   onPressed: () {
                          //     // Handle button 1 press
                          //   },
                          //   child: Text('Regect',style: TextStyle(color: Colors.grey.shade600),),
                          // ),
                          SizedBox(width: 16),
                          ElevatedButton(  style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                            backgroundColor:
                            MaterialStateProperty.all(Color.fromRGBO(205, 67, 58, 1)),
                          ),
                            onPressed: () {
                              // Handle button 2 press
                            },
                            child: Text('Delete'),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]
        ),
      ),
    );
  }
}
