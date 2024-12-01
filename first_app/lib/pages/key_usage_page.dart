
import 'package:flutter/material.dart';

class KeyUsagePage extends StatefulWidget {
  const KeyUsagePage({super.key});

  @override
  State<KeyUsagePage> createState() => _KeyUsagePageState();
}

class _KeyUsagePageState extends State<KeyUsagePage> {

  List<int> items = [1,2,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Key Usage"),),
      body: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          if(newIndex > oldIndex) newIndex--;

          setState(() {
            final item = items.removeAt(oldIndex);
            items.insert(newIndex, item);
          });
        },
        children: items
        .map((item) => ListTile(
            key: ValueKey(item),
          title: Text('Öğe $item'),
          ),).toList(),
      ),
    );
  }
}
