import 'package:flutter/material.dart';
import 'package:test_flutter/components/app_Bar/app_Bar.dart';
import 'package:test_flutter/components/drawer/drawer.dart';
import 'package:test_flutter/modules/home/components/main_List.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({Key? key}) : super(key: key);

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  final scaffoldKey = GlobalKey<ScaffoldState>(debugLabel: 'home');
  final valueKey = const ValueKey('home');

  @override
  Widget build(BuildContext context) {
    print('======111======$scaffoldKey');
    return Stack(
      children: [
        Scaffold(
          key: scaffoldKey,
          extendBody: true,
          appBar: AppBarContainer(scaffoldKey: scaffoldKey),
          body: CustomGridView(),
          drawer: const DrawerWidget(),
        ),
      ],
    );
  }
}
