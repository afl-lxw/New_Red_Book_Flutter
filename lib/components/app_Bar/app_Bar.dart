import 'package:flutter/material.dart';

class AppBarContainer extends StatelessWidget implements PreferredSizeWidget {
  const AppBarContainer({Key? key, required this.scaffoldKey})
      : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey;
  final String title = '首页';

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      leading: Builder(builder: (context) {
        return IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            print('点击了菜单---$scaffoldKey');
            scaffoldKey.currentState?.openDrawer();
          },
        );
      }),
      actions: <Widget>[
        InkWell(
          child: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        )
      ],
      flexibleSpace: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 188, 198, 227),
              Color.fromARGB(255, 106, 217, 245),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
