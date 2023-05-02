import 'package:flutter/material.dart';

class DiscoverContainer extends StatefulWidget {
  const DiscoverContainer({super.key});

  @override
  State<DiscoverContainer> createState() => _DiscoverContainerState();
}

class _DiscoverContainerState extends State<DiscoverContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover'),
      ),
      body: const Center(
        child: Text('Discover'),
      ),
    );
  }
}
