import 'package:flutter/material.dart';
import 'package:flutter_application1/container/container.dart';

class RowClass extends StatelessWidget {
  const RowClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        ContainerClass(
          width: 120,
          // height: 150,
          img:
              "https://t4.ftcdn.net/jpg/01/43/23/83/360_F_143238306_lh0ap42wgot36y44WybfQpvsJB5A1CHc.jpg",
        ),
        ContainerClass(
          width: 70,
          height: 100,
          img:
              "https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg",
        ),
      ],
    );
  }
}
