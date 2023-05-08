import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'components/WaterfallsFlowModel.dart';

class NotificationContainer extends StatefulWidget {
  const NotificationContainer({Key? key}) : super(key: key);

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  Widget build(BuildContext context) {
    return const WaterfallsFlowModel();
  }
}
