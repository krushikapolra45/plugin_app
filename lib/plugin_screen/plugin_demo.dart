import 'package:carousel_slider/carousel_slider.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Container(
                  height: 500,
                  width: 500,
                  color: Colors.purpleAccent,
                  child: Text("hello"),
                ),
              ],
              options: CarouselOptions(
                height: 400,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.3,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
