import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerSlider extends StatefulWidget {
  const BannerSlider({super.key});

  @override
  State<BannerSlider> createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int activeIndex = 0;
  final List<String> images = [
    'assets/images/promo.jpg',
    'assets/images/promo1.jpg',
    'assets/images/promo2.jpg',
    'assets/images/promo3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CarouselSlider.builder(
            itemCount: images.length,
            itemBuilder: (context, index, realIndex) {
              final image = images[index];
              return buildImage(image, index);
            },
            options: CarouselOptions(
              height: 110,
              onPageChanged: (index, reason) =>
                  setState(() => activeIndex = index),
            ),
          ),
          const SizedBox(height: 8),
          buildIndicator(),
        ],
      ),
    );
  }

  Widget buildImage(String image, int index) => Container(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            images[index],
            fit: BoxFit.cover,
            width: 300,
          ),
        ),
      );

  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: images.length,
        effect: const SlideEffect(
          activeDotColor: Colors.red,
          dotColor: Colors.grey,
          dotWidth: 8,
          dotHeight: 8,
        ),
      );
}
