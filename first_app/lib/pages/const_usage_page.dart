
import 'package:flutter/material.dart';

class ConstUsagePage extends StatelessWidget {
  const ConstUsagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Const Kullanımmı"),),
      body: Column(
        children: [
          const Text("Bu metin her zaman sabittir."),
          const SizedBox(height: 20,),
          const Icon(Icons.icecream_outlined),
        ],
      ),
    );
  }
}
