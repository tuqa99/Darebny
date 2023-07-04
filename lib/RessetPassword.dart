import 'package:darebny/SignIn.dart';
import 'package:flutter/material.dart';

class RessetPassword extends StatefulWidget {
  const RessetPassword({Key? key}) : super(key: key);

  @override
  State<RessetPassword> createState() => _RessetPasswordState();
}

class _RessetPasswordState extends State<RessetPassword> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:    Color.fromRGBO(218, 218, 218, 0.39),
        leading: IconButton(
            onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (context) =>SignIn()));},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Container(
        width: screenSize.width,
        color: Color.fromRGBO(218, 218, 218, 0.39),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: screenSize.height / 6,
            ),
            Text(
              "   Resset Password",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "     Please enter your email address to"
                  "\n     request a password reset",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              textAlign: TextAlign.start,
            ),
            SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                height: 56,
                width: screenSize.width / 1.1,
                child: TextField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            gapPadding: 10,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide(color: Colors.white)),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 35, vertical: 25),
                        border: OutlineInputBorder(
                            gapPadding: 10,
                            borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                            borderSide:
                            BorderSide(color: Colors.grey.shade800)),
                        hintText: 'abc@gmail.com',
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          size: 30,
                          color: Colors.grey,
                        ))),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Center(
              child: Container(
                  height: 56,
                  width: screenSize.width / 1.3,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          backgroundColor:
                          MaterialStateProperty.all(Color.fromRGBO(205, 67, 58, 1))),
                      onPressed: () {},
                      child: Text(
                        "SEND",
                        style: TextStyle(color: Colors.white),
                      ))),
            ),
          ],
        ),
      ),
    );
  }
}