import 'dart:async';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

class WaterfallsFlowModel extends StatefulWidget {
  const WaterfallsFlowModel({Key? key}) : super(key: key);

  @override
  State<WaterfallsFlowModel> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<WaterfallsFlowModel> {
  final List<String> _imageUrls = [
    'https://picsum.photos/id/10/400/400',
    'https://picsum.photos/id/20/400/600',
    'https://picsum.photos/id/30/400/500',
    'https://picsum.photos/id/40/400/300',
    'https://picsum.photos/id/50/400/700',
    'https://picsum.photos/id/60/400/400',
    'https://picsum.photos/id/70/400/800',
    'https://picsum.photos/id/80/400/200',
    'https://picsum.photos/id/90/400/900',
    'https://picsum.photos/id/100/400/500',
  ];

  final List<double> _imageHeights = [];

  @override
  void initState() {
    super.initState();

    // 计算所有图片的高度
    for (String url in _imageUrls) {
      _calculateImageHeight(url);
    }
  }

  Future<void> _calculateImageHeight(String url) async {
    final completer = Completer<void>();

    // 加载图片
    final imageStream = NetworkImage(url).resolve(ImageConfiguration.empty);
    final listener = ImageStreamListener(
      (ImageInfo info, bool _) {
        final double height = info.image.height.toDouble();
        setState(() {
          _imageHeights.add(height);
        });
        completer.complete();
      },
      onError: (exception, stackTrace) {
        completer.completeError(exception);
      },
    );
    // 监听图片加载完成事件
    imageStream.addListener(listener);

    // 等待图片加载完成--
    await completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('notification'),
      ),
      body: StaggeredGridView.extentBuilder(
        itemCount: _imageUrls.length,
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        maxCrossAxisExtent: 230,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        itemBuilder: (BuildContext context, int index) {
          return AspectRatio(
              aspectRatio: 1,
              child: FadeTransition(
                opacity: const AlwaysStoppedAnimation(1),
                child: Image.network(
                  _imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ));
        },
        staggeredTileBuilder: (int index) {
          // 计算图片在瀑布流中的高度
          final double imageHeight =
              _imageHeights.isNotEmpty && _imageHeights.length > index
                  ? _imageHeights[index]
                  : 100;
          late double imageHeightMiddleware = imageHeight;
          if (imageHeight < 100) {
            imageHeightMiddleware = 100;
          }
          if (imageHeight > 300) {
            imageHeightMiddleware = 250;
          }
          const double textHeight = 30; // 假设每个图片下面有30高度的文字
          final int numLines = (textHeight / 20).ceil(); // -假设每行文字高度为20
          final double totalHeight =
              imageHeightMiddleware + numLines * textHeight;
          return StaggeredTile.extent(1, totalHeight);
        },
      ),
    );
  }
}
