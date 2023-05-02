import 'package:flutter/material.dart';
import 'package:test_flutter/config/home_Img.dart';

class CustomGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2, //每行显示2个Container
      childAspectRatio: 1.0, //子项宽高比为1:1
      physics: const BouncingScrollPhysics(), //滚动效果
      padding: const EdgeInsets.all(16.0), //内边距
      mainAxisSpacing: 16.0, //主轴方向间距
      crossAxisSpacing: 16.0, //副轴方向间距
      children: List.generate(HomeImgList.imgList.length, (index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.grey[300], //背景颜色
            borderRadius: BorderRadius.circular(8.0), //圆角
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                HomeImgList.imgList[index]['imgPath'],
                width: 50,
                height: 90,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 8.0),
              Text(
                HomeImgList.imgList[index]['name'],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
