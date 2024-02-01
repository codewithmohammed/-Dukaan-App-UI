import 'package:flutter/material.dart';
import 'package:ui1/screen6/categories.dart';
import 'package:ui1/screen6/products.dart';

class ScreenSix extends StatefulWidget {
  const ScreenSix({super.key});

  @override
  State<ScreenSix> createState() => _ScreenSixState();
}

class _ScreenSixState extends State<ScreenSix>
    with SingleTickerProviderStateMixin {
  late TabController _tabCOntroller;

  @override
  void initState() {
    super.initState();
    _tabCOntroller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back, color: Colors.white)),
        title: const Center(
            child: Text(
          'Catalogue',
          style: TextStyle(color: Colors.white),
        )),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Material(
            color: Colors.blue,
            child: TabBar(
                indicatorColor: Colors.white,
                unselectedLabelColor: Colors.grey.shade300,
                indicatorSize: TabBarIndicatorSize.values.first,
                indicatorWeight: 5,
                labelColor: Colors.white,
                controller: _tabCOntroller,
                tabs: const [
                  Tab(
                    text: 'Products',
                  ),
                  Tab(
                    text: 'Categories',
                  )
                ]),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabCOntroller,
              children: const [ScreenProduct(), ScreenCategory()],
            ),
          )
        ],
      )),
    );
  }
}
