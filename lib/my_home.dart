import 'package:flutter/material.dart';

import 'MyPages/call_sc.dart';
import 'MyPages/camera_sc.dart';
import 'MyPages/chat_sc.dart';
import 'MyPages/status_sc.dart';

class MyAppHome extends StatefulWidget {


  @override
  _MyAppHomeState createState() => _MyAppHomeState();
}

class _MyAppHomeState extends State<MyAppHome> with SingleTickerProviderStateMixin
{
  TabController _tabController;
  bool showFab = true;
  @override
  void initState() {
    super.initState();

    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(() {
      if (_tabController.index == 1) {
        showFab = true;
      } else {
        showFab = false;
      }
      setState(() {});
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("WhatsApp"),
          elevation: 0.7,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "LET's CHATS"),
              Tab(
                text: "MY STATUS",
              ),
              Tab(
                text: "CALL ME",
              ),
            ],
          ),
          actions: <Widget>[
            Icon(Icons.search),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
            ),
            Icon(Icons.more_vert)
          ],
        ),
            body: new TabBarView(
              controller: _tabController,
              children: <Widget>[
                CameraSc(),
                ChatSc(),
                StatusScreen(),
                CallsSc(),
              ],
            ),
      floatingActionButton: showFab
          ? FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
        onPressed: () => print("open chats"),
      )
          : null,
    );
  }
}
