import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:minggu9/controller/demoController.dart';

class DemoPage extends StatelessWidget{
  final DemoController ctrl = Get.find();
  @override 
  Widget build(BuildContext){
    return Scaffold(
      appBar: AppBar(
        title: Text('DemoPage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(Get.arguments),
            ),
              SwitchListTile(
                value: ctrl.isDark,
                title: Text("Touch to change ThemMode"),
                onChanged: ctrl.changeTheme,
              ),
            ElevatedButton(
              onPressed: () =>  Get.snackbar(
                "Snackbar", "Hello this is the Snackbar message",
                snackPosition: SnackPosition.BOTTOM,
                colorText: Colors.white,
                backgroundColor: Colors.black87),
              child: Text('Snack Bar')),
            ElevatedButton(
              onPressed: () => Get.defaultDialog(
                title: "Dialogue",
                content: Text(
                  'Hey, From Dialogue',)),
              child: Text('Dialogue')),
            ElevatedButton(
              onPressed: () => Get.bottomSheet(Container(
                height: 150,
                color: Colors.white,
                child: Text(
                  'Hello From Bottom Sheet',
                ),
              )),
              child: Text('Bottom Sheet')),
            ElevatedButton(
              onPressed: () => Get.offAllNamed('/'),
              child: Text('Back To Home')),
          ],
        ),
      ),
    );
  }
}