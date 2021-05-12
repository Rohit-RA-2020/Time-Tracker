import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter/app/home/tab_item.dart';

class CupertinoHomeScaffold extends StatelessWidget {
  const CupertinoHomeScaffold(
      {Key key, @required this.currentTab, @required this.onSelectTab})
      : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectTab;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: [
          _buildItem(TabItem.jobs),
          _buildItem(TabItem.account),
          _buildItem(TabItem.entries),
        ],
        onTap: (index) => onSelectTab(TabItem.values[index]),
      ),
    );
  }

  BottomNavigationBarItem _buildItem(TabItem tabItem) {
    final itemData = TabItemData.allTabs[tabItem];
    final color = currentTab == tabItem ? Colors.indigo : Colors.grey;
    return BottomNavigationBarItem(
      icon: Icon(
        itemData.icon,
        color: color,
      ),
      label: itemData.title,
    );
  }
}
