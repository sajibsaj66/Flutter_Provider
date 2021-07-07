import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_do_flutter/about.dart';
import 'package:provider_do_flutter/setting.dart';
import 'package:provider_do_flutter/setting_controller_provider.dart';
import 'package:provider_do_flutter/test_controller.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final testControler = Provider.of<TestController>(context);
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Provider"),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            ListTile(
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) {
                  return Setting();
                });
                Navigator.push(context, route);
              },
              title: Text("Setting"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) {
                  return AboutPage();
                });
                Navigator.push(context, route);
              },
              title: Text("About"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 20.0,
              ),
              Column(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Consumer<SettingController>(
                        builder: (context, settingcontroller, child) {
                          return Text(
                            "Provider can be somewhat difficult to explain. The package author, Remi, has described it as a mix between State Management and Dependency Injection. At his talk at Flutter Europe in 2019, he quoted another Flutter community usual, Scott Stoll, who called is 'Inherited Widgets for humans'. I think this is the most straight-forward explanation.I also find it difficult to find an explanation on the interwebs that includes an easy to grok example. If you want to use provider effectively, you're left to tinkering or reading the source code. I will attempt to fill that void here.In a nutshell, Provider gives us an easy, low boiler-plate way to separate business logic from our widgets in apps. Because it's built on InheritedWidget classes, it also makes it easy to re-use and re-factor business logic. Separating state from your UI is one of the main problems that Provider solves.",
                            style: TextStyle(
                                fontSize: settingcontroller.sizeCounter
                                            .toDouble() ==
                                        0.0
                                    ? 20
                                    : settingcontroller.sizeCounter.toDouble()),
                          );
                        },
                      ),
                    ),
                  ),
                  Consumer<TestController>(
                    builder: (context, testControler, __) => Container(
                      width: 300,
                      height: 100,
                      color: Colors.teal,
                      child: Text(
                        testControler.name,
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ),
                  TextField(
                    controller: testControler.textController,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        testControler.nameChangeMethod();
                      },
                      child: Text("save"))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
