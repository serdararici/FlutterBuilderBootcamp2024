import 'package:flutter/material.dart';

class ListviewPage extends StatelessWidget {

  final List<String> isimler = ["Ahmet" , "Ali" ,"Ayşe", "Mehmet", "Fatma", "Veli"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Widget"),
      ),
      body: ListView.builder(
        itemCount: isimler.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Text(isimler[index][0]),
            ),
            title: Text(isimler[index]),
            subtitle: Text("Kullanıcı"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('${isimler[index]} seçildi')),
              );
            },
          );
        },
      ),
    );
  }
}
