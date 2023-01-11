import 'package:flutter/material.dart';
import 'package:flutter_application1/Models/image.dart';

import 'package:flutter_application1/image_holder/image_holder.dart';

class ListViewClass extends StatelessWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      // physics: const NeverScrollableScrollPhysics(),
      children: const [
        ImageHolder(
          image: ImageModel(
            img:
                "https://t4.ftcdn.net/jpg/01/43/23/83/360_F_143238306_lh0ap42wgot36y44WybfQpvsJB5A1CHc.jpg",
            title: "Image1",
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et augue urna. Cras et rutrum ex, sit amet viverra eros. Donec ac libero sit amet.",
            ratings: "4.5",
          ),
        ),
        ImageHolder(
          image: ImageModel(
            img:
                "https://t4.ftcdn.net/jpg/01/43/23/83/360_F_143238306_lh0ap42wgot36y44WybfQpvsJB5A1CHc.jpg",
            title: "Image1",
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et augue urna. Cras et rutrum ex, sit amet viverra eros. Donec ac libero sit amet.",
            ratings: "4.5",
          ),
        ),
        ImageHolder(
          image: ImageModel(
            img:
                "https://t4.ftcdn.net/jpg/01/43/23/83/360_F_143238306_lh0ap42wgot36y44WybfQpvsJB5A1CHc.jpg",
            title: "Image1",
            description:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin et augue urna. Cras et rutrum ex, sit amet viverra eros. Donec ac libero sit amet.",
            ratings: "4.5",
          ),
        ),
      ],
    );
  }
}
