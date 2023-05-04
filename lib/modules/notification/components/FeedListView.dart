import 'package:flutter/material.dart';
import './WaterfallsFlowModel.dart';

class FeedListView extends StatefulWidget {
  final dynamic? mode;

  const FeedListView({Key? key, this.mode}) : super(key: key);

  @override
  FeedListViewState createState() => FeedListViewState();
}

class FeedListViewState extends State<FeedListView> {
  List<String> imgList = [];

  List<WaterfallsFlowModel> modelList = <WaterfallsFlowModel>[];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
