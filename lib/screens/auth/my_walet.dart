import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWalet extends StatefulWidget {
  const MyWalet({super.key});

  @override
  State<MyWalet> createState() => _MyWaletState();
}

class _MyWaletState extends State<MyWalet> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('My walet'),
    );
  }
}
