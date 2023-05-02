import 'package:flutter/material.dart';
import 'package:test_flutter/modules/admin/damin.dart';
import 'package:test_flutter/modules/discover/discover.dart';
import 'package:test_flutter/modules/notification/notification.dart';
import 'package:test_flutter/modules/home/list_Home.dart';

class RouterList {
  static List<Widget> Router_List_State() {
    return <Widget>[
      const HomeContainer(),
      const DiscoverContainer(),
      const NotificationContainer(),
      const AdminContainer(),
    ];
  }
}
