import 'package:flutter/material.dart';
class MTimeKeeper extends StatefulWidget {
  const MTimeKeeper({super.key});

  @override
  State<MTimeKeeper> createState() => _MTimeKeeperState();
}

class _MTimeKeeperState extends State<MTimeKeeper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:  const Text('Leave Projector'),
      ),
    );
  }
}

