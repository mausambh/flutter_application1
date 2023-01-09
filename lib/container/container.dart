import 'package:flutter/material.dart';

class ContainerClass extends StatelessWidget {
  final String? img;
  final double? height;
  final double? width;
  const ContainerClass({Key? key, this.img, this.width, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        // margin: const EdgeInsets.all(8.0),
        // color: Colors.amber[600],
        margin: const EdgeInsets.all(10.0),
        // color: const Color.fromARGB(255, 46, 204, 32),
        width: width ?? 100,
        height: height ?? 100,

        // child:  const Image(image: AssetImage("assets/images/bc.png")))
        // child: const Center(child: Text("I am container"
        child: ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: Image.network(
              img ??
                  "https://t4.ftcdn.net/jpg/01/43/23/83/360_F_143238306_lh0ap42wgot36y44WybfQpvsJB5A1CHc.jpg",
              fit: BoxFit.cover,
            )));
  }
}
