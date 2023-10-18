import 'package:flutter/material.dart';

class ImageComposant extends StatefulWidget {
  const ImageComposant({super.key, required this.index, required String title});

  final String index ;

  @override
  State<ImageComposant> createState() => _ImageComposantState();
}

class _ImageComposantState extends State<ImageComposant> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 260,
        height: 260,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0)),
        child: Image.network(images[int.parse(widget.index)])
      )
    );
  }
}

List<String> images = [
    'https://picsum.photos/300/300?random=1',
    'https://picsum.photos/300/300?random=2',
    'https://picsum.photos/300/300?random=3',
    'https://picsum.photos/300/300?random=4',
    'https://picsum.photos/300/300?random=5',
    'https://picsum.photos/300/300?random=6',
    'https://picsum.photos/300/300?random=7',
    'https://picsum.photos/300/300?random=8',
    'https://picsum.photos/300/300?random=9',
    'https://picsum.photos/300/300?random=10',
  ];