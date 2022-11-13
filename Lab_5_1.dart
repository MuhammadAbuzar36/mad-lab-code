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
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (MediaQuery.of(context).orientation == Orientation.portrait) {
            if (value < 4) {
              value = value + 1;
            }
            return Image.network(
              list[0],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            );
          } else {
            if (value > 0) {
              value = value - 1;
            }

            return Image.network(
              list[1],
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              fit: BoxFit.cover,
            );
          }
        },
      ),
    );
  }
}