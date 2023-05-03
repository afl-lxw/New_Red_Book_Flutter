import 'package:flutter/material.dart';

class WaterfallFlow extends StatefulWidget {
  final List<dynamic> children;
  final int crossAxisCount;
  final double spacing;
  final double runSpacing;
  final EdgeInsets padding;
  final Function? onLoadMore;

  const WaterfallFlow({
    Key? key,
    required this.children,
    required this.crossAxisCount,
    this.spacing = 0,
    this.runSpacing = 0,
    this.padding = const EdgeInsets.all(0),
    this.onLoadMore,
  }) : super(key: key);

  @override
  _WaterfallFlowState createState() => _WaterfallFlowState();

  static builder(
      {required EdgeInsets padding,
      required ScrollController controller,
      required int itemCount,
      required SliverGridDelegateWithFixedCrossAxisCount gridDelegate,
      required Widget Function(BuildContext context, int index) itemBuilder,
      required Future<void> Function() onReachedBottom}) {}
}

class _WaterfallFlowState extends State<WaterfallFlow> {
  late List<double> heights;
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    heights = List.filled(widget.crossAxisCount, 0);
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.extentAfter == 0) {
      widget.onLoadMore?.call();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: widget.crossAxisCount,
          crossAxisSpacing: widget.spacing,
          mainAxisSpacing: widget.runSpacing,
          childAspectRatio: 1,
        ),
        itemCount: widget.children.length,
        itemBuilder: (BuildContext context, int index) {
          int minHeightIndex = 0;
          for (int i = 1; i < heights.length; i++) {
            if (heights[i] < heights[minHeightIndex]) {
              minHeightIndex = i;
            }
          }
          heights[minHeightIndex] +=
              widget.children[index].height + widget.runSpacing;
          return widget.children[index];
        },
      ),
    );
  }
}
