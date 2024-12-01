
import 'package:flutter/material.dart';

class CacheExtentPage extends StatelessWidget {
  const CacheExtentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cache Kullanımı"),),
      body: ListView.builder(
        itemCount: 100,
        cacheExtent: 200,   // Görünen alanın 200 px ötesine  kadar yükle
        itemBuilder: (context, index) {
          return ListTile(
            title: Text("Item: $index"),
          );
        }
      ),
    );
  }
}
