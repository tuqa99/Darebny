<<<<<<< HEAD
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:darebny/screens/Filter/filter%20page.dart';
=======
import 'package:darebny/screens/SignIn.dart';
>>>>>>> afa2a0d38ac64ba6a6dd47b2cdaa642339c2d9d9
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:darebny/screens/Splash.dart';
import 'package:flutter/material.dart';

void main() async {
  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    runApp(MyApp());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
<<<<<<< HEAD
      home: FilterPag(),
=======
      home: SignIn(),
>>>>>>> afa2a0d38ac64ba6a6dd47b2cdaa642339c2d9d9
    );
  }
}
