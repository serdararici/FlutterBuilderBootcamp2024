
import 'package:flutter/material.dart';

class LazyLoadingPage extends StatelessWidget {
  const LazyLoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lazy Loading"),),
      body: ListView.builder(
        itemCount: 1000,
        itemBuilder: (context, index) {
          return FutureBuilder(
            future: Future.delayed(Duration(milliseconds: 500), () => index),
            builder: (context,snapshot) {
              if(snapshot.connectionState == ConnectionState.waiting) {
                return ListTile(
                  title: Text("Yükleniyor..."),
                );
              };
              return ListTile(
                title: Text('Item: ${snapshot.data}'),
              );
            },
          );
        }
      ),
    );
  }
}
