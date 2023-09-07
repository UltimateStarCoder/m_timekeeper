import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:m_timekeeper/sign_in_page.dart';

class MTimeKeeper extends StatefulWidget {
  const MTimeKeeper({super.key});

  @override
  State<MTimeKeeper> createState() => _MTimeKeeperState();
}

class _MTimeKeeperState extends State<MTimeKeeper> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  signOut() async {
    await auth.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Leave Projector'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.logout,
              color: Colors.white,

            ),
            //TODO
            //tooltip: Text(),
            onPressed: () {
              signOut();
              Navigator.pushAndRemoveUntil(context,
                  MaterialPageRoute(builder: (BuildContext context) {
                return const SignInPage();
              }), (r) {
                return false;
              });
            },
          )
        ],
      ),
    );
  }
}
