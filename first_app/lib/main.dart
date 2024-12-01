import 'package:first_app/Model/counter.dart';
import 'package:first_app/pages/cache_extent_page.dart';
import 'package:first_app/pages/const_usage_page.dart';
import 'package:first_app/pages/infinite_scroll_page.dart';
import 'package:first_app/pages/key_usage_page.dart';
import 'package:first_app/pages/lazy_loading_page.dart';
import 'package:first_app/pages/list_operations_page.dart';
import 'package:first_app/pages/provider_page.dart';
import 'package:first_app/pages/repaint_boundary.dart';
import 'package:first_app/widgets/column_page.dart';
import 'package:first_app/widgets/container_page.dart';
import 'package:first_app/widgets/elevated_button_page.dart';
import 'package:first_app/widgets/gridview_page.dart';
import 'package:first_app/widgets/listview_page.dart';
import 'package:first_app/widgets/row_page.dart';
import 'package:first_app/widgets/stack_page.dart';
import 'package:first_app/widgets/text_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
      ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Widget",
      theme: ThemeData(primaryColor: Colors.blue),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Explorer"),
      ),
      body: (ListView(
        children: [
          ListTile(
            title: Text("Row Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RowPage()),
              );
            },
          ),
          ListTile(
            title: Text("Column Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColumnPage()),
              );
            },
          ),
          ListTile(
            title: Text("Container Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ContainerPage()),
              );
            },
          ),
          ListTile(
            title: Text("Text Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => TextPage()),
              );
            },
          ),
          ListTile(
            title: Text("ListView Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListviewPage()),
              );
            },
          ),
          ListTile(
            title: Text("Elevated Button Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ElevatedButtonPage()),
              );
            },
          ),
          ListTile(
            title: Text("Stack Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => StackPage()),
              );
            },
          ),
          ListTile(
            title: Text("Gridview Widget"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => GridviewPage()),
              );
            },
          ),
          ListTile(
            title: Text("Provider"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ProviderPage()),
              );
            },
          ),
          ListTile(
            title: Text("Liste İşlemi"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ListOperationsPage()),
              );
            },
          ),
          ListTile(
            title: Text("Infinite Scroll"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => InfiniteScrollPage()),
              );
            },
          ),
          ListTile(
            title: Text("Repaired İşlemi"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => RepaintBoundaryPage()),
              );
            },
          ),
          ListTile(
            title: Text("Const Usage"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => ConstUsagePage()),
              );
            },
          ),
          ListTile(
            title: Text("Cache Extent İşlemi"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => CacheExtentPage()),
              );
            },
          ),
          ListTile(
            title: Text("Lazy Loading"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LazyLoadingPage()),
              );
            },
          ),
          ListTile(
            title: Text("Key İşlemi"),
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => KeyUsagePage()),
              );
            },
          ),
        ],
      )
      ),
    );
  }
}
