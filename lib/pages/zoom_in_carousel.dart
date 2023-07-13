import 'dart:async';
import 'package:flutter/material.dart';

class ZoomInCarousel extends StatefulWidget {
  final List<String> imageList;

  ZoomInCarousel({required this.imageList});

  @override
  _ZoomInCarouselState createState() => _ZoomInCarouselState();
}

class _ZoomInCarouselState extends State<ZoomInCarousel>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  late AnimationController _animationController;
  late Animation<double> _animation;
  late Timer _timer;

  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = Tween<double>(begin: 0.85, end: 1.0).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut))
      ..addListener(() {
        setState(() {});
      });
    _animationController.forward();

    // Initialize the timer
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if (_currentPage == widget.imageList.length - 1) {
        _currentPage = 0;
      } else {
        _currentPage++;
      }
      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    });

    _pageController.addListener(() {
      if (_pageController.page!.toInt() != _currentPage) {
        _currentPage = _pageController.page!.toInt();
        _animationController.reset();
        _animationController.forward();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
    _animationController.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 450, // you can adjust the height as necessary
      child: PageView.builder(
        controller: _pageController,
        itemCount: widget.imageList.length,
        itemBuilder: (context, index) {
          return Transform.scale(
            scale: index == _currentPage ? _animation.value : 1,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.imageList[index]),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
