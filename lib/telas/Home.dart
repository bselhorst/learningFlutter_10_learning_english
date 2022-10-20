import 'package:app10/telas/Bichos.dart';
import 'package:app10/telas/Numeros.dart';
import 'package:app10/telas/Vogais.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        title: Text("Aprenda Inglês"),
        bottom: TabBar(
          indicatorWeight: 4,
          indicatorColor: Colors.white,
          labelStyle: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          controller: _tabController,
          tabs: [
            Tab(
              text: "Bichos",
            ),
            Tab(
              text: "Números",
            ),
            Tab(
              text: "Vogais",
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Bichos(),
          Numeros(),
          Vogais(),
        ],
      ),
    );
  }
}
