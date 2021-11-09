import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';
import 'package:flutter_app/widgets/drawer.dart';
import 'package:flutter_app/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String appName = "MyFirstApp";

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Catalog App",
          // style: TextStyle(color: Colors.black),
        ),
      ),
      // ignore: avoid_unnecessary_containers
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemBuilder: (context, index) {
              return ItemWidget(item: CatalogModel.items[index]);
            },
            itemCount: CatalogModel.items.length),
      ),
      // ignore: prefer_const_constructors
      drawer: MyDrawer(),
    );
  }
}
