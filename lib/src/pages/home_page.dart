import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:movies/src/widgets/card_swiper_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text('Peliculas'),
        backgroundColor: Colors.cyan.shade600,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.search),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [_swiperTarjetas()],
        ),
      ),
    );
  }

  _swiperTarjetas() {

    return CardSwiper(
      items: [10,2,3,12,20],
    );
  }
}
