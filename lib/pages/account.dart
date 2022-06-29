import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../details_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  double _right = 0;
  double _opacity = 1;
  Alignment _alignment = Alignment.centerRight;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Animated Positioned

      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
              child: Stack(
                children: [
                  AnimatedPositioned(
                    right: _right,
                    child: Text('Positioned Text'),
                    duration: Duration(seconds: 2),
                    onEnd: () {
                      setState(() {
                        _right = _right == 50 ? 0 : 50;
                      });
                    },
                  )
                ],
              ),
            ),
            // ignore: prefer_const_constructors

            //Animated Opacity

            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Card(
                child: ListTile(
                  title: Text('My List Tile'),
                ),
              ),
            ),

            // Animated align

            AnimatedAlign(
              duration: Duration(seconds: 5),
              alignment: _alignment,
              child: Text('My Text'),
              onEnd: () {
                setState(() {
                  _alignment = _alignment == Alignment.centerLeft
                      ? Alignment.centerRight
                      : Alignment.centerLeft;
                });
              },
            ),

            //hero animation

            Card(
              elevation: 5,
              child: InkWell(
                child: ListTile(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (_) => detailsScreen())),
                  leading: Hero(
                      tag: '1',
                      child: Image.asset(
                          'assets/vegetables.png')), //tag must be same for both screen
                  title: Text('Vegetables'),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            _right = 50;
            _opacity = 0.5;
            _alignment = Alignment.centerLeft;
          });
        },
        child: Text('Show Animation'),
      ),
    );
  }
}
