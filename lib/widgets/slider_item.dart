import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/slide_components.dart';

class Slider_Item extends StatelessWidget {
  const Slider_Item({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      child: CarouselSlider.builder(
        itemCount: slider_Image.length,
        options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          height: 140,
        ),
        itemBuilder:
            (BuildContext context, int itemIndex, int pageViewIndex) =>
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(slider_Image[itemIndex]),
                      fit: BoxFit.cover)),
            ),
      ),
    );
  }
}
