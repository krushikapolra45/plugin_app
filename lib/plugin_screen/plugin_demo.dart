import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PluginDemo extends StatefulWidget {
  const PluginDemo({Key? key}) : super(key: key);

  @override
  State<PluginDemo> createState() => _PluginDemoState();
}

class _PluginDemoState extends State<PluginDemo> {
  // final ImagePicker picker = ImagePicker();
  // final ImagePicker _picker = ImagePicker();
  // final TextEditingController maxWidthController = TextEditingController();
  // final TextEditingController maxHeightController = TextEditingController();
  // final TextEditingController qualityController = TextEditingController();
  //
  // XFile? image;
  late VideoPlayerController _controller;
  _controller = VideoPlayerController.networkUrl(Uri.parse(
  'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child:   Center(
          child: _controller.value.isInitialized
              ? AspectRatio(
            aspectRatio: _controller.value.aspectRatio,
            child: VideoPlayer(_controller),
          )
              : Container(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
  dispose() {
  super.dispose();
  _controller.dispose();
  }
}


    //     body: SafeArea(
    //       child: ListView(
    //         padding: const EdgeInsets.all(15),
    //         children: [
    //           GestureDetector(
    //             onTap: () => pickProfileImage(),
    //             child: Container(
    //               height: 400,
    //               width: 500,
    //               clipBehavior: Clip.antiAlias,
    //               decoration: BoxDecoration(
    //                 borderRadius: BorderRadius.circular(10),
    //                 color: Colors.teal,
    //                 border: const Border(
    //                   left: BorderSide(
    //                     color: Colors.black87,
    //                     width: 10,
    //                   ),
    //                   right: BorderSide(
    //                     color: Colors.black87,
    //                     width: 10,
    //                   ),
    //                   top: BorderSide(
    //                     color: Colors.black87,
    //                     width: 10,
    //                   ),
    //                   bottom: BorderSide(
    //                     color: Colors.black87,
    //                     width: 10,
    //                   ),
    //                 ),
    //               ),
    //               child: image != null
    //                   ? Image.file(
    //                       File(image!.path),
    //                       fit: BoxFit.cover,
    //                     )
    //                   : const Icon(Icons.camera_alt_sharp, size: 90),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ),
    //   );
    // }
    //
    // pickProfileImage() async {
    //   image = await picker.pickImage(source: ImageSource.gallery);
    //   debugPrint(image!.path);
    //   debugPrint(image!.name);
    //
    //   var data = await image!.readAsBytes();
    //   debugPrint(data.toString());
    //
    //   setState(() {});
  }
}
