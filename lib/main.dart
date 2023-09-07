
import 'package:flutter/material.dart';
import 'package:m_timekeeper/sign_in_page.dart';

void main() {
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
