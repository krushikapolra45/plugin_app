import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';

class PluginDemo extends StatefulWidget {
  const PluginDemo({Key? key}) : super(key: key);

  @override
  State<PluginDemo> createState() => _PluginDemoState();
}

class _PluginDemoState extends State<PluginDemo> {

}

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
    children: [
  ],
  ),
  );
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
