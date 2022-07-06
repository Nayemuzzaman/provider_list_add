import 'package:flutter/material.dart';
import 'package:flutter_provider_list/providers/listshowModel.dart';
import 'package:flutter_provider_list/screens/listScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => ListShowModel(),

        child: ListScreeen(),
      ),
    );
  }
}
