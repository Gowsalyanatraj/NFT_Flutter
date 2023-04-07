import 'package:flutter/material.dart';
import 'package:nft_app/components/app_bar.dart';
import 'package:nft_app/components/bottom_bar.dart';
import 'package:nft_app/components/tab_bar.dart';
import 'package:nft_app/tabs/recent_tab.dart';
import 'package:nft_app/tabs/top_tab.dart';
import 'package:nft_app/tabs/trending_tab.dart';
import 'package:nft_app/util/glass_box.dart';
import 'const/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // user tapped searched button
  void searchButtonTapped() {}

  // tab options
  List tabOption = [
    ["Recent", RecentTab()],
    ["Trending", TrendingTab()],
    ["Top", TopTab()],
  ];

  // bottom bar navigation
  int _currentBottonIndex = 0;
  void _handleIndexChanged(int? index) {
    setState(() {
      _currentBottonIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOption.length,
      child: Scaffold(
        backgroundColor: backgroundColor,
        extendBody: true,
        bottomNavigationBar: GlassBox(
          child: MyBottomBar(
            index: _currentBottonIndex,
            onTap: _handleIndexChanged,
          ),
        ),
        body: ListView(
          children: [
            // title + search button
            MyAppBar(
              title: 'Explore Collections',
              onSearchTap: searchButtonTapped,
            ),

            // tab bar
            SizedBox(
              height: 600,
              child: MyTabBar(
                tabOptions: tabOption,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
