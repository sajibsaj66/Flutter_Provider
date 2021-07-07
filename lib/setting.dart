import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_do_flutter/setting_controller_provider.dart';

class Setting extends StatelessWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final settingcontroler = Provider.of<SettingController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Setting Page")),
      ),
      body: Center(
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  settingcontroler.increment();
                },
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 50.0,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Colors.green,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  settingcontroler.decrement();
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 50.0,
                ),
                style: ElevatedButton.styleFrom(
                  shape: CircleBorder(),
                  primary: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
