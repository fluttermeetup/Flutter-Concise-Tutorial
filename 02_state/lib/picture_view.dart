import 'package:flutter/material.dart';

class PictureView extends StatefulWidget {
  final String picName;
  const PictureView({super.key, required this.picName});

  @override
  State<PictureView> createState() => _PictureViewState();
}

class _PictureViewState extends State<PictureView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('assets/${widget.picName}'),
    );
  }
}
