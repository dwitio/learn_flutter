import 'dart:math';

import 'package:belajar_flutter/widget_slider/ui/widgets/movie_box.dart';
import 'package:flutter/material.dart';

class MainPageWidgetSlider extends StatefulWidget {
  const MainPageWidgetSlider({Key key}) : super(key: key);

  @override
  State<MainPageWidgetSlider> createState() => _MainPageWidgetSliderState();
}

class _MainPageWidgetSliderState extends State<MainPageWidgetSlider> {
  double currentPageValue = 0;
  PageController controller =
      PageController(initialPage: 0, viewportFraction: 0.6);

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://media.suara.com/pictures/original/2022/05/24/81628-thor-love-and-thunder.jpg",
      "https://m.media-amazon.com/images/M/MV5BOWEzN2IxOTktMzBjMS00ZWU1LWI0OTgtZjViNWYxOWY1MjUxXkEyXkFqcGdeQXVyNzY4NDQzNTg@._V1_.jpg",
      "https://upload.wikimedia.org/wikipedia/id/d/de/Gundala_%282019%29_poster.jpg",
      "https://static.wikia.nocookie.net/kiminonawa/images/6/62/Kimi-no-Na-wa.-Visual.jpg/revision/latest?cb=20160927170951"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Widget Slider"),
      ),
      body: PageView.builder(
          controller: controller,
          itemCount: urls.length,
          itemBuilder: (context, index) {
            double difference = index - currentPageValue;
            if (difference < 0) {
              difference *= -1;
            }
            difference = min(1, difference);
            return Center(
                child: MovieBox(
              urls[index],
              scale: 1 - (difference * 0.3),
            ));
          }),
    );
  }
}
