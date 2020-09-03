import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:getwidget/components/image/gf_image_overlay.dart';

class SwiperPublicidad extends StatelessWidget {
  List<String> populares;
  SwiperPublicidad(this.populares);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      child: Swiper(
          autoplay: true,
          viewportFraction: 0.89,
          duration: Duration.microsecondsPerMillisecond,
          layout: SwiperLayout.DEFAULT,
          itemCount: populares.length,
          itemBuilder: (context, index) => _tarjeta(populares[index])),
    );
  }
}

Widget _tarjeta(String src) {
  return Container(
    alignment: AlignmentDirectional.topCenter,
    child: GFImageOverlay(
        height: 220,
        borderRadius: BorderRadius.circular(20.0),
        width: 330,
        colorFilter: null,
        boxFit: BoxFit.cover,
        image: NetworkImage(src)),
  );
}
