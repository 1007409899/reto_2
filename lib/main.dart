import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reto_2/services/approutes.dart';
import 'package:reto_2/viewmodels/catalog.dart';
import 'package:reto_2/viewmodels/viewmodel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Catalog(),
        child: MaterialApp(
          title: 'Flutter Examples',
          debugShowCheckedModeBanner: false,
          initialRoute: "/",
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          routes: AppRoutes().getRoutes,
        ));
  }
}
