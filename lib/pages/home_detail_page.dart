// ignore_for_file: unrelated_type_equality_checks, sized_box_for_whitespace, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:flutter_app/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != Null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                tag: Key(catalog.id.toString()),
                child: Container(
                    padding: EdgeInsets.all(30),
                    height: 400,
                    child: Image.network(
                      catalog.image,
                    ))),
            Expanded(
                child: Container(
              width: double.infinity,
              // color: Colors.amber,
              child: Column(
                children: [
                  Text(
                    catalog.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    catalog.desc,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "iPhone 12, the new one in the iPhone 12 series was launched on October 13, 2020. The smartphone features an immersive 6.10-inch touchscreen display that has a resolution of 1170x2532 pixels at a pixel density of 460 pixels per inch (ppi).",
                      style: TextStyle(
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey.shade400,
        padding: EdgeInsets.only(left: 20, right: 18),
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${catalog.price.toString()}",
              style: TextStyle(color: Colors.black, fontSize: 19),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Add to Cart",
                style: TextStyle(fontSize: 15),
              ),
              style: ElevatedButton.styleFrom(),
            ),
          ],
        ),
      ),
    );
  }
}
