import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x_simple/controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Controller controller = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(
        title: Text('GetX'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GetBuilder<Controller>(
              init: Controller(),
              builder: (_) => Text(
                'Current value is: ${Get.find<Controller>().x}',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Get.find<Controller>().increment();
              },
              child: Text('Add number'),
            ),
          ],
        ),
      ),
    );
  }
}
