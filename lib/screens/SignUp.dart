import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darebny/screens/SignIn.dart';
import 'package:darebny/screens/Training%20details%20page/Training%20details%20page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late TextEditingController emailController;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color.fromRGBO(218, 218, 218, 0.39),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignIn()));
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          color: Color.fromRGBO(218, 218, 218, 0.39),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenSize.height / 10),
              Row(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "  Sign Up",
                    style: TextStyle(
                      color: Colors.black,
                      height: 1.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              SizedBox(height: 25),
              Container(
                height: 56,
                width: screenSize.width / 1.1,
                child: TextField(
                  controller: usernameController,
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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                    border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.grey.shade800),
                    ),
                    hintText: 'Full Name',
                    prefixIcon: const Icon(
                      UniconsLine.user,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 56,
                width: screenSize.width / 1.1,
                child: TextField(
                  controller: emailController,
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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                    border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.grey.shade800),
                    ),
                    hintText: 'abc@gmail.com',
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 56,
                width: screenSize.width / 1.1,
                child: TextField(
                  controller: passwordController,
                  obscureText: !passwordVisible,
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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                    border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.grey.shade800),
                    ),
                    labelStyle: TextStyle(color: Colors.grey.shade800),
                    hintText: 'Your Password',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(
                        passwordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 56,
                width: screenSize.width / 1.1,
                child: TextField(
                  obscureText: !passwordVisible,
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
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    contentPadding:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 25),
                    border: OutlineInputBorder(
                      gapPadding: 10,
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      borderSide: BorderSide(color: Colors.grey.shade800),
                    ),
                    labelStyle: TextStyle(color: Colors.grey.shade800),
                    hintText: 'Confirm Password',
                    prefixIcon: Icon(
                      Icons.lock_outline,
                      color: Colors.grey,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          passwordVisible = !passwordVisible;
                        });
                      },
                      icon: Icon(
                        passwordVisible ? Icons.visibility : Icons.visibility_off,
                        color: Colors.grey,
                        size: 30,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
              SizedBox(height: 20),
              Container(
                height: 56,
                width:screenSize.width / 1.3,
                child: ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(Color.fromRGBO(205, 67, 58, 1)),
                  ),
                  onPressed: CreateAccount,
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Or continue with",
                style: TextStyle(
                  color: Colors.black,
                  height: 1.0,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      UniconsLine.google,
                      color: Colors.red,
                      size: 35,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 35,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignIn()),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        color: Colors.black,
                        height: 1.0,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void CreateAccount() async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      if (credential.user != null) {
        await FirebaseFirestore.instance.collection("Users").doc(credential.user!.uid).set({
          "name": usernameController.text,
          "Email": emailController.text,
          "Password": passwordController.text,
        });

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const TrainingDetails()),
        );
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("The password provided is too weak."),
            duration: Duration(seconds: 2),
          ),
        );
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("The account already exists for that email."),
            duration: Duration(seconds: 2),
          ),
        );
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
