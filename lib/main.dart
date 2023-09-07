
import 'package:flutter/material.dart';
import 'package:m_timekeeper/sign_in_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
     MaterialApp(
      title: 'Military Time Keeper',
      //home: const MTimeKeeper(),
      initialRoute: '/signIn',
      routes: {
        '/signIn' : (context) => const SignInPage(),
      },
    )
  );
}
