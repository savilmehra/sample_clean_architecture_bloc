import 'dart:io';
import 'package:camera/camera.dart';
import 'package:pro_image_editor/pro_image_editor.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

import 'camera_view.dart';

class ImagePreview extends StatefulWidget {
  @override
  ImagePreviewState createState() {
    return ImagePreviewState();
  }
}

class ImagePreviewState extends State<ImagePreview> {
  File? file;

  loadTflite() async {
    String? res = await Tflite.loadModel(
        model: "assets/obj.tflite",
        labels: "assets/labels.txt",
        numThreads: 1,
        // defaults to 1
        isAsset: true,
        // defaults to true, set to false to load resources outside assets
        useGpuDelegate:
            false // defaults to false, set to true to use GPU delegate
        );


    var recognitions = await Tflite.runModelOnImage(
        path:file!.path??"",   // required
        // defaults to 1.0
        numResults: 2,    // defaults to 5
        // defaults to 0.1
        asynch: true      // defaults to true
    );

  }

  @override
  void initState() {
    loadTflite();
    super.initState();
  }
  @override
  Future<void> dispose() async {
    await Tflite.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        file != null
            ? Expanded(
                child: ProImageEditor.file(
                  file!,
                  configs: ProImageEditorConfigs(
                    i18n: const I18n(
                      emojiEditor: I18nEmojiEditor(),
                      // More translations...
                    ),
                  ),
                  callbacks: ProImageEditorCallbacks(
                    onImageEditingComplete: (bytes) async {},
                  ),
                ),
              )
            : Expanded(
                child: Container(
                  child: Image.asset(
                    "assets/images/placeholder.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () async {
                  var res = await availableCameras().then((value) =>
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CameraPage(cameras: value))));

                  if (res != null) {
                    file = File(res);
                    setState(() {});
                  }
                },
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  size: 45,
                )),
            IconButton(
                onPressed: () async {
                  FilePickerResult? result =
                      await FilePicker.platform.pickFiles(
                    type: FileType.media,
                    allowMultiple: false,
                  );

                  if (result != null) {
                    file = File(result.files.first.path ?? "");

                    setState(()  {
                    });
                    await loadTflite();
                  }
                },
                icon: const Icon(
                  Icons.file_copy,
                  size: 45,
                ))
          ],
        )
      ],
    );
  }
}
