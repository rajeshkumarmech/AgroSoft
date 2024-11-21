import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class ImageSlide extends StatefulWidget {
  const ImageSlide({super.key});

  @override
  State<ImageSlide> createState() => _ImageSlideState();
}

class _ImageSlideState extends State<ImageSlide> {
  int activeIndex = 0;
  final urlImage = [
    'assets/images/Component 28.png',
    'assets/images/Component 28.png',
    'assets/images/Component 28.png',
    'assets/images/Component 28.png',
    'assets/images/Component 28.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: urlImage.length,
          itemBuilder: (context, index, realIndex) {
            final urlimage = urlImage[index];
            return buildImage(urlimage, index);
          },
          options: CarouselOptions(
            height: 150,
            autoPlay: false,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 3000),
            onPageChanged: (index, reason) => setState(() {
              activeIndex = index;
            }),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        buildIndicator(),
      ],
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
      width: 500,
      padding: const EdgeInsets.all(5),
      child: Image.asset(
        urlImage,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: urlImage.length,
        effect: const WormEffect(
          strokeWidth: 2,
          dotHeight: 8,
          dotWidth: 8,
          activeDotColor: Colors.black87,
        ),
      );
}
