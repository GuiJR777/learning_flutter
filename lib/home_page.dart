import 'package:flutter/material.dart';
import 'package:hello_world/app_theme_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('State Test'),
          actions: [LightDarkThemeSwitch()],
        ),
        body: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text('Hello World')]),
              ],
            )));
  }
}

class LightDarkThemeSwitch extends StatelessWidget {
  const LightDarkThemeSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppThemeController.instance.is_dark_theme,
        onChanged: (value) {
          AppThemeController.instance.change_theme();
        });
  }
}
