import 'package:flutter/material.dart';

class HomePageTabs extends StatefulWidget {
  const HomePageTabs({Key? key, required List<HomePageTab> tabs})
      : _tabs = tabs,
        super(key: key);

  static const String routeName = '/';

  final List<HomePageTab> _tabs;

  @override
  _HomePageTabsState createState() => _HomePageTabsState();
}

class _HomePageTabsState extends State<HomePageTabs> {
  late final List<BottomNavigationBarItem> bottomNavigationBarItems;

  late final List<Widget> pages;

  final pageController = PageController(initialPage: 0);

  var selectedIndex = 0;

  @override
  void initState() {
    super.initState();

    bottomNavigationBarItems = widget._tabs
        .map((tab) => BottomNavigationBarItem(
              icon: Icon(tab.icon),
              label: tab.title,
            ))
        .toList();

    pages = widget._tabs.map((tab) => tab.screen).toList();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: bottomNavigationBarItems.length,
      child: Scaffold(
        body: PageView(
          children: pages,
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          onPageChanged: (index) =>
              WidgetsBinding.instance?.focusManager.primaryFocus?.unfocus(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavigationBarItems,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              pageController.jumpToPage(index);
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class HomePageTab {
  HomePageTab({
    required this.icon,
    required this.title,
    required this.screen,
  });

  final IconData icon;
  final String title;
  final Widget screen;
}
