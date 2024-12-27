import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final controller = PageController(keepPage: true);

  @override
  Widget build(BuildContext context) {
    final pages = List.generate(
        6,
            (index) =>
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.grey.shade300,
              ),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
              child: Center(
                  child: Text(
                    "Page $index",
                    style: TextStyle(color: Colors.indigo),
                  )),
            ));

    return Scaffold(
        body: SafeArea(
        child: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
        SizedBox(height: 16),
    SizedBox(
    height: 240,
    child: PageView.builder(
    controller: controller,
    // itemCount: pages.length,
    itemBuilder: (_, index) {
    return _buildWidget();
    },
    ),
    ),
    SmoothPageIndicator(
    controller: controller,
    count: pages.length,
    effect: const WormEffect(
    dotHeight: 16,
    dotWidth: 16,
    type: WormType.thinUnderground,
    ),
    ),],),),),);
  }

  Widget _buildWidget ()
  {
   return  Container(
      color: Colors.red,
      height: 200,
    );
  }
}
