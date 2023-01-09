import 'package:flutter/material.dart';
import 'package:flutter_application1/container/container.dart';

class ColumnClass extends StatelessWidget {
  const ColumnClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ContainerClass(
          img:
              "https://t4.ftcdn.net/jpg/01/43/23/83/360_F_143238306_lh0ap42wgot36y44WybfQpvsJB5A1CHc.jpg",
        ),
        ContainerClass(
          img:
              "https://static8.depositphotos.com/1012223/980/i/600/depositphotos_9803930-stock-photo-demo-cubes.jpg",
        ),
      ],
    );
  }
}
