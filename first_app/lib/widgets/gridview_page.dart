import 'package:flutter/material.dart';

class GridviewPage extends StatelessWidget {

  final List<String> kategoriler = [
    "Kategori 1",
    "Kategori 2",
    "Kategori 3",
    "Kategori 4",
    "Kategori 5",
    "Kategori 6",
    "Kategori 7",
    "Kategori 8",
    "Kategori 9",
    "Kategori 10",
    "Kategori 11",
    "Kategori 12",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView Widget"),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: kategoriler.length,
          padding: EdgeInsets.all(10),
          itemBuilder: (context,index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(kategoriler[index],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            );
          }
      ),
    );
  }
}
