import 'package:flutter/material.dart';
import 'dart:async';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  late PageController _controller;
  final List<String> images = [
    'assets/teste1.jpg',
    'assets/teste2.jpg',
    'assets/teste3.jpg',
    'assets/teste4.jpg',
  ];

  final List<String> titles = [
    'Titre 1',
    'Titre 2',
    'Titre 3',
    'Titre 4',
  ];

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: _currentPage);
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < images.length - 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      if (_controller.hasClients) {
        _controller.animateToPage(
          _currentPage,
          duration: const Duration(milliseconds: 350),
          curve: Curves.easeIn,
        );
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(images[index]),
                      Text(titles[index]),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
