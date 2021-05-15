import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/app/home/account/account_page.dart';
import 'package:time_tracker_flutter/app/home/cupertino_home_widget.dart';
import 'package:time_tracker_flutter/app/home/jobs/jobs_page.dart';
import 'package:time_tracker_flutter/app/home/tab_item.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TabItem _currentTab = TabItem.jobs;

  Map<TabItem, WidgetBuilder> get widgetBuilders {
    return {
      TabItem.jobs: (_) => JobsPage(),
      TabItem.entries: (_) => Container(),
      TabItem.account: (_) => AccountPage(),
    };
  }

  void _select(TabItem tabItem) {
    setState(() {
      _currentTab = tabItem;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoHomeScaffold(
      widgetBuilders: widgetBuilders,
      currentTab: _currentTab,
      onSelectTab: _select,
    );
  }
}
