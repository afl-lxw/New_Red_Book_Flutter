import 'package:flutter/material.dart';
import 'components/WaterfallsFlowModel.dart';

class NotificationContainer extends StatefulWidget {
  const NotificationContainer({Key? key}) : super(key: key);

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  late final AnimationController? animationController;
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    animationController?.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const WaterfallsFlowModel();
  }
}
