import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:darebny/screens/Splash.dart';
import 'package:flutter/material.dart';

void main() async{
  {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(  options: DefaultFirebaseOptions.currentPlatform,);
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
      home: Splash(),
    );
  }
}
