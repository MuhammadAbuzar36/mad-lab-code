
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: ImageShow()
  ));
}

class ImageShow extends StatefulWidget {
  ImageShow({Key? key}) : super(key: key);

  @override
  State<ImageShow> createState() => _ImageShowState();
}

class _ImageShowState extends State<ImageShow> {
  double _scale = 1.0;
  double _previousScale = 0;
  int value = 0;
  List<String> list = [
    'https://www.shutterstock.com/image-photo/mountains-during-sunset-beautiful-natural-600w-407021107.jpg',
    'https://images.unsplash.com/photo-1541963463532-d68292c34b19?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=388&q=80'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ImageViewer'),
      ),
      body: GestureDetector(
        onPanUpdate: (DragUpdateDetails details) {
          if (details.delta.dx > 0) {
            setState(() {
              if (value < 2) {
                value = value + 1;
              } else {
                value = 0;
              }
              print(value);
            });
          } else if (details.delta.dx < 0) {
            setState(() {
              if (value > 0) {
                value = value - 1;
              } else {
                value = 2;
              }
              print(value);
            });
          }
        },
        child: Transform(
          transform: Matrix4.diagonal3Values(_scale, _scale, _scale),
          alignment: FractionalOffset.center,
          child: Image.network(
            list[value],
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}