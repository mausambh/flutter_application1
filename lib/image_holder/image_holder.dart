import 'package:flutter/material.dart';
import 'package:flutter_application1/Models/image.dart';

import '../container/container.dart';
import 'description.dart';

class ImageHolder extends StatelessWidget {
  final ImageModel? image;
  // final String? img;
  // final String? title;
  // final String? description;
  // final String? ratings;
  const ImageHolder({Key? key, this.image}) : super(key: key);
  // const ImageHolder(
  //     {Key? key, this.img, this.description, this.title, this.ratings})
  //     : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 8, right: 8),
      child: Container(
        height: 350,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.white,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Column(
          children: [
            ContainerClass(
              img: image!.img,
              height: 180,
              width: MediaQuery.of(context).size.width,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(image!.title ?? "",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 2),
              child: Description(
                image: image,
                // description: description,
                // ratings: ratings,
              ),
            )
          ],
        ),
      ),
    );
  }
}
