import 'dart:io';

import 'package:flutter/material.dart';

import '../../shared.dart';

class InputImageListDisplayWidget extends StatelessWidget {
  final List<File> imageList;

  final void Function()? onRemovePressed;

  const InputImageListDisplayWidget(
      {Key? key, this.onRemovePressed, required this.imageList})
      : super(key: key);

  Widget displayPickedImages() {
    List<Widget> imageWidgets = [];
    for (var image in imageList) {
      Stack imageWidget = Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Positioned(
            child: SizedBox(
              width: 80,
              height: 80,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.file(image),
              ),
            ),
          ),
          Positioned(
              child: IconButton(
            onPressed: onRemovePressed,
            icon: const Icon(
              Icons.cancel_outlined,
              color: Colors.white,
              size: 30,
            ),
          ))
        ],
      );
      imageWidgets.add(imageWidget);
    }
    return Padding(
      padding: kPadding8,
      child: SizedBox(
        height: 100.0,
        child: GridView.count(
          scrollDirection: Axis.horizontal,
          crossAxisCount: 1,
          children: imageWidgets,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return displayPickedImages();
  }
}
