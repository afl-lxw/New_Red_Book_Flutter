import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_flutter/provider/btn_provider.dart';

class BottomList extends StatefulWidget {
  const BottomList({
    Key? key,
    // required this.callback,
    // required this.selectedIndex
  }) : super(key: key);
  // final Function(int) callback;
  // final int selectedIndex;

  @override
  State<BottomList> createState() => BottomListState();
}

class BottomListState extends State<BottomList> {
  @override
  Widget build(BuildContext context) {
    // 获取provider
    final btnProvider = Provider.of<IndexBtnProvider>(context);

    return BottomAppBar(
        color: Colors.transparent,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: Column(mainAxisSize: MainAxisSize.min, // 限制 bottom 只占用必要的空间
            children: <Widget>[
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(1),
                      borderRadius: BorderRadius.circular(40.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    // height: 60.0,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 50, sigmaY: 50),
                            child: Container(
                              height: 65.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.white.withOpacity(0.1),
                              ),
                              child: Stack(
                                children: [
                                  Positioned(
                                      bottom: 0,
                                      left: 0,
                                      right: 0,
                                      top: 0,
                                      child: Padding(
                                        padding: const EdgeInsets.all(0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            InkWell(
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.home_sharp,
                                                  color: btnProvider.getIndex ==
                                                          0
                                                      ? const Color.fromRGBO(
                                                          110, 185, 205, 1)
                                                      : Colors.black54,
                                                ),
                                                onPressed: () {
                                                  // print('-------${widget.selectedIndex}');
                                                  // widget.callback(0);
                                                  btnProvider.changeIndex(0);
                                                },
                                              ),
                                            ),
                                            InkWell(
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.fingerprint_sharp,
                                                  color: btnProvider.getIndex ==
                                                          1
                                                      ? const Color.fromRGBO(
                                                          110, 185, 205, 1)
                                                      : Colors.black54,
                                                ),
                                                onPressed: () {
                                                  // widget.callback(1);
                                                  btnProvider.changeIndex(1);
                                                },
                                              ),
                                            ),
                                            const SizedBox(),
                                            InkWell(
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.message,
                                                  color: btnProvider.getIndex ==
                                                          2
                                                      ? const Color.fromRGBO(
                                                          110, 185, 205, 1)
                                                      : Colors.black54,
                                                ),
                                                onPressed: () {
                                                  // widget.callback(2);
                                                  btnProvider.changeIndex(2);
                                                },
                                              ),
                                            ),
                                            InkWell(
                                              child: IconButton(
                                                icon: Icon(
                                                  Icons.person_sharp,
                                                  color: btnProvider.getIndex ==
                                                          3
                                                      ? const Color.fromRGBO(
                                                          110, 185, 205, 1)
                                                      : Colors.black54,
                                                ),
                                                onPressed: () {
                                                  // widget.callback(3);
                                                  btnProvider.changeIndex(3);
                                                },
                                              ),
                                            )
                                          ], //均分底部导航栏横向空间
                                        ),
                                      ))
                                ],
                              ),
                            ))),
                  ))
            ]));
  }
}
