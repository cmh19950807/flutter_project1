import 'dart:async';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalSeconds = 25 * 60;
  bool isRunnung = false;
  late Timer timer;

  void onTick(Timer timer) {
    setState(() {
      totalSeconds = totalSeconds - 1;
    });
  }

  void onStartPressed() {
    setState(() {
      isRunnung = !isRunnung;
    });
    isRunnung
        ? timer = Timer.periodic(
            const Duration(seconds: 1),
            onTick,
          )
        : timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: deprecated_member_use
      backgroundColor: Theme.of(context).backgroundColor,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Text(
                '$totalSeconds',
                style: TextStyle(
                    color: Theme.of(context).cardColor,
                    fontSize: 89,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          Flexible(
              flex: 3,
              child: Center(
                child: IconButton(
                  color: Theme.of(context).cardColor,
                  iconSize: 98,
                  onPressed: onStartPressed,
                  icon: Icon(isRunnung
                      ? Icons.pause_circle_outline_outlined
                      : Icons.play_circle_outline),
                ),
              )),
          Flexible(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).cardColor,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pomodars',
                          style: TextStyle(
                            // ignore: deprecated_member_use
                            fontSize: 20,
                            fontWeight: FontWeight.w900,
                            color:
                                // ignore: deprecated_member_use
                                Theme.of(context).textTheme.headline1!.color,
                          ),
                        ),
                        Text(
                          '0',
                          style: TextStyle(
                            // ignore: deprecated_member_use
                            fontSize: 40,
                            fontWeight: FontWeight.w900,
                            color:
                                // ignore: deprecated_member_use
                                Theme.of(context).textTheme.headline1!.color,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
