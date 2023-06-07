import 'package:flutter/material.dart';
import 'package:flutter_control_project/widget/app_bar.dart';

import 'package:flutter_swiper_view/flutter_swiper_view.dart';

class BannerPage extends StatelessWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: 'Banner'),
      body: Column(
        children: [

          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Swiper(
              itemBuilder: (context, index) {
                return Image.network(
                  "https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fsafe-img.xhscdn.com%2Fbw1%2F2ce84809-7435-48f5-960e-b3887c1c50dd%3FimageView2%2F2%2Fw%2F1080%2Fformat%2Fjpg&refer=http%3A%2F%2Fsafe-img.xhscdn.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1688697431&t=aa94023849f5b183a1a45921fdb2de19",
                  fit: BoxFit.fill,
                );
              },
              itemCount: 2,
              autoplay: true,
              pagination: const SwiperPagination(),
            ),
          )
        ],
      ),
    );
  }
}
