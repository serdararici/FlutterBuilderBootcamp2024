
import 'package:flutter/material.dart';

class MoreTab extends StatelessWidget {
  const MoreTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diğer"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.info),
              title: Text('Hakkımızda'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('İletişim'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.article),
              title: Text('Kullanım Koşulları'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text('Blog'),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text('Uygulama Bilgileri'),
              onTap: (){},
            ),
            Divider(),
            Padding(
                padding: const EdgeInsets.all(16),
              child: Text(
                'Sosyal Medya Hesaplarımız',
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue, fontSize: 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.facebook, size: 40, color: Colors.blue,),
                Icon(Icons.chat, size: 40, color: Colors.purple,),
                Icon(Icons.camera_alt, size: 40, color: Colors.lightBlue,),
              ],
            )
          ],
        ),
      ),
    );
  }
}
