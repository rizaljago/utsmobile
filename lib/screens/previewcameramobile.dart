import 'dart:io';
import 'dart:typed_data';

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path/path.dart';


class PreviewCameraMobile extends StatefulWidget {
  final String imgPath;

  PreviewCameraMobile({this.imgPath});

  @override
  _PreviewCameraMobileState createState() => _PreviewCameraMobileState();
}

class _PreviewCameraMobileState extends State<PreviewCameraMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        elevation: 0.0,
        title: new Text('AyoBerbagi.id', textAlign: TextAlign.center),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Image.file(
                File(widget.imgPath),
                fit: BoxFit.cover,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 60.0,
                color: Colors.black,
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      getBytesFromFile().then((bytes) {
                        Share.file('Share via', basename(widget.imgPath),
                            bytes.buffer.asUint8List(), 'image/path');
                      });
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<ByteData> getBytesFromFile() async {
    Uint8List bytes = File(widget.imgPath).readAsBytesSync();
    return ByteData.view(bytes.buffer);
  }
}