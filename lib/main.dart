import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/provider/btn_provider.dart';
import 'package:test_flutter/router/router_List.dart';
import 'components/bottom/bottom.dart' as BottomContainer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => IndexBtnProvider(),
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const MyHomePage(title: 'Flutter UI'),
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final bool isDrawerOpen = false;
  @override
  void initState() {
    super.initState();
    // bool isDrawerOpen = _scaffoldKey.currentState!.isDrawerOpen;-
  }

  @override
  Widget build(BuildContext context) {
    // 获取provider
    final btnProvider = Provider.of<IndexBtnProvider>(context);
    return Stack(
      children: [
        Scaffold(
          key: _scaffoldKey,
          // appBar: const AppBarContainer(),
          extendBody: true,
          bottomNavigationBar:
              !isDrawerOpen ? const BottomContainer.BottomList() : null,
          backgroundColor: const Color.fromARGB(254, 254, 254, 254),
          body: RouterList.Router_List_State().elementAt(btnProvider.getIndex),
          // drawer: const DrawerWidget(),

          floatingActionButton: FloatingActionButton(
            backgroundColor: const Color.fromRGBO(110, 185, 205, 1),
            onPressed: () => {},
            // elevation: 2.0,
            child: const Icon(Icons.add),
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked, // This
        ),
        // const Positioned(top: 0, bottom: 0, left: 0, child: DrawerWidget())
      ],
    );
  }
}
