import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AddScreen extends StatefulWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  State<AddScreen> createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  double _height = 100;
  double _width = 200;
  Color _color = Colors.black;
  void animatedContainer() {
    setState(() {
      _height = 200;
      _width = 300;
      _color = Colors.green;
    });
  }

  double _fontSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
        child: Column(
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 3),
              curve: Curves.bounceInOut,
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(20),
              ),
              onEnd: () {
                setState(() {
                  _width = _width == 200 ? 300 : 200;
                  _color = _color == Colors.black ? Colors.green : Colors.black;
                });
              },
            ),
            ElevatedButton(
                onPressed: () => animatedContainer(), child: Text('Animate')),
            AnimatedDefaultTextStyle(
              child: Text('Animated Default Text Style'),
              style: TextStyle(
                fontSize: _fontSize,
                color: Colors.black,
              ),
              duration: Duration(seconds: 2),
              curve: Curves.easeInBack,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _fontSize = 40;
                  });
                },
                child: Text('Animate')),
          ],
        ),
      ),
    );
  }
}
