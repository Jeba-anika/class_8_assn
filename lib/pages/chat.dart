import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';
import 'package:rive/rive.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Lottie.network(
                'https://assets3.lottiefiles.com/packages/lf20_rcuthdnb.json'),
            Container(
              height: 200,
              width: 200,
              child: RiveAnimation.network(
                'https://cdn.rive.app/animations/vehicles.riv',
                alignment: Alignment.bottomCenter,
                artboard: 'Truck',
                animations: [
                  'curves',
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
