import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_do_flutter/setting_controller_provider.dart';
import 'package:provider_do_flutter/test_controller.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("About Us Page")),
      ),
      body: Column(
        children: [
          Container(
            height: 20.0,
          ),
          Container(
            child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Consumer<SettingController>(
                  builder: (_, settingcontroller, __) {
                    return Text(
                      "See how to architect your Flutter app using Provider, letting you readily handle app state to update your UI when the app state changes.",
                      style: TextStyle(
                          fontSize:
                              settingcontroller.sizeCounter.toDouble() == 0.0
                                  ? 20.0
                                  : settingcontroller.sizeCounter.toDouble()),
                    );
                  },
                )),
          ),
          Consumer<TestController>(
            builder: (context, testcontroller, __) => Container(
              width: 300,
              height: 200,
              color: Colors.teal,
              child: Text(
                testcontroller.name,
                style: TextStyle(fontSize: 20.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
