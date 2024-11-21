import 'package:flutter/material.dart';

class TextPage extends StatelessWidget {
  const TextPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Widget"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Serdar Arıcı"),
            SizedBox(height: 10),
            Text(
              "Kalin, büyük ve renkli metin",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "ssdkhflagksjbfkjasbljkaslbkbkjanjavdbfvk"
                  "dkljvjhdkhfgjkdghdkjlflgnjkdfh",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[700],
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Bu bir merkez hizalı metindir",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                color: Colors.teal,
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "Altı çizgili ve italic metin",
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.underline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
