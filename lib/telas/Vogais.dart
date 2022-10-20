import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Vogais extends StatefulWidget {
  const Vogais({super.key});

  @override
  State<Vogais> createState() => _VogaisState();
}

class _VogaisState extends State<Vogais> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Vogais"),
    );
  }
}
