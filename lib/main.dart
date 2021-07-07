import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_do_flutter/homepage.dart';
import 'package:provider_do_flutter/setting_controller_provider.dart';
import 'package:provider_do_flutter/test_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<SettingController>(
          create: (BuildContext context) {
            return SettingController();
          },
        ),
        ChangeNotifierProvider<TestController>(
          create: (BuildContext context) {
            return TestController();
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ),
    );
  }
}
