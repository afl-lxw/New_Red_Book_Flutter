import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotificationContainer extends StatefulWidget {
  const NotificationContainer({Key? key}) : super(key: key);

  @override
  State<NotificationContainer> createState() => _NotificationContainerState();
}

class _NotificationContainerState extends State<NotificationContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notification-'),
      ),
      key: UniqueKey(),
      body: StaggeredGridView.countBuilder(
        crossAxisCount: 4,
        itemCount: 30,
        itemBuilder: (BuildContext context, int index) => _buildCard(index),
        staggeredTileBuilder: (int index) =>
            StaggeredTile.count(2, index.isEven ? 2.5 : 2.6),
        mainAxisSpacing: 4.0,
        crossAxisSpacing: 4.0,
      ),
    );
  }

  Widget _buildCard(int index) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(
            aspectRatio: 1.0,
            child: Image.network(
              'https://picsum.photos/id/${index + 10}/500/500',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'This is card $index',
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
    );
  }
}
