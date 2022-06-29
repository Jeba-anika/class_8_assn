import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Bar'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30.0, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is a text '),
            Text(
              'app_name'.tr,
              style: TextStyle(fontSize: 40),
            ),
            Text(
              'app_title'.tr,
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('en', 'US'),
                  );
                },
                child: Text('English')),
            ElevatedButton(
                onPressed: () {
                  Get.updateLocale(
                    Locale('bn', 'BD'),
                  );
                },
                child: Text('Bangla')),
          ],
        ),
      ),
    );
  }
}
