import 'package:flutter/material.dart';

import '../route_manager/route_manager.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            OutlinedButton(
                onPressed: () {
                  // Navigator.pushReplacement<void, void>(
                  //   context,
                  //   MaterialPageRoute<void>(
                  //     builder: (BuildContext context) => const ThirdScreen(),
                  //   ),
                  // );

                  Navigator.pushReplacementNamed(context, Routes.thirdScreen);
                },
                child: const Text("To Third Screen")),
            OutlinedButton(
                onPressed: () {
                  Navigator.pop(context, "passed back");
                },
                child: const Text("back")),
          ],
        ),
      ),
    );
  }
}
