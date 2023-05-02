import 'package:flutter/material.dart';

class AdminContainer extends StatefulWidget {
  const AdminContainer({super.key});

  @override
  State<AdminContainer> createState() => _AdminContainerState();
}

class _AdminContainerState extends State<AdminContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: MediaQuery.of(context).size.height,
    );
  }
}
