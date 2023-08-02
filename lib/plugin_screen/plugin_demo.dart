import 'package:flutter/material.dart';

class PluginDemo extends StatefulWidget {
  const PluginDemo({Key? key}) : super(key: key);

  @override
  State<PluginDemo> createState() => _PluginDemoState();
}

class _PluginDemoState extends State<PluginDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              Image.asset("assets/images/profil.png", width: 375, height: 208),
              Text(
                "Anywhere you are",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Text(
                "Sell houses easily with the help of\n Listenoryx and to make this line big\nI am writing more.",
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
              CircleAvatar(
                child: Text("\${"),
              )
            ],
          );
        },
      ),
    );
  }
}
