import 'package:first_app/widgets/row_page.dart';
import 'package:flutter/material.dart';

class ElevatedButtonPage extends StatelessWidget {
  const ElevatedButtonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Elevated Button Widget"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                 SnackBar(content: Text("normal butona tıklandı")),
                );
              },
              child: Text("Normal Button")),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("stilli butona tıklandı")),
                  );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                ),
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                child: Text("Stilli Button",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => RowPage()));
                },
                child: Text("Row sayfasına git")),
          ],
        ),
      ),
    );
  }
}
