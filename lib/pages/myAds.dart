import 'package:class_8_assn/screen_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyAddsScreen extends StatelessWidget {
  const MyAddsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 0.5 / 0.1,
            child: Container(
              height: 50,
              width: 50,
              color: Colors.orange,
            ),
          ), //Aspect Ratio
          FittedBox(
            fit: BoxFit.fill,
            child: Row(children: [
              Container(
                height: 50,
                width: 200,
                color: Colors.amber,
              ),
              Container(
                height: 50,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 50,
                width: 200,
                color: Colors.black,
              ),
            ]),
          ), // Fitted Box
          Container(
            height: 100,
            width: 100,
            color: Colors.blueAccent,
            child: FractionallySizedBox(
              heightFactor: 0.5, // 50% of parent container
              widthFactor: 0.5,
              child: Container(
                color: Colors.green,
              ),
            ), // Fractionally Sized Box
          ),

          LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth < 280) {
              return Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              );
            } else if (constraints.maxWidth > 480 &&
                constraints.maxWidth < 800) {
              return Container(
                height: 100,
                width: 100,
                color: Colors.red,
              );
            } else {
              return Container(
                height: 100,
                width: 100,
                color: Colors.black,
              );
            }
          }), // Layout Builder
          Container(
            height: 50,
            width: MediaQuery.of(context).size.width,
            color: Colors.green,
          ), // Media query
          OrientationBuilder(builder: (context, orientation) {
            if (orientation == Orientation.portrait) {
              return Text('Portrait');
            } else {
              return Text('Landscape');
            }
          }),

          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => ScreenUtilEX()));
              },
              child: Text("Jump to another page"))
          // Orientation Builder
        ],
      ),
    );
  }
}
