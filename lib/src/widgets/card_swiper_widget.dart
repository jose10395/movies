import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class CardSwiper extends StatelessWidget {
  final List<dynamic> items;

  const CardSwiper({Key key, @required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _screenSize = MediaQuery.of(context).size;

    return Container(
      padding: EdgeInsets.only(top: 10.0),
      // width: _screenSize.width * 0.7,
      // height: _screenSize.height * 0.5,
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemWidth: _screenSize.width * 0.7,
        itemHeight: _screenSize.height * 0.5,
        itemBuilder: (BuildContext context, int index) {
          final imagen = items[index];
          return ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              imageSemanticLabel: index.toString(),
              placeholder: AssetImage('assets/jar-loading.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$imagen'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 250.0,
              fit: BoxFit.cover,
            ),
          );
        },
        itemCount: items.length,
        // pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }
}

// api key
// 1865f43a0549ca50d341dd9ab8b29f49