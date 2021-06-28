import 'package:flutter/material.dart';
import 'package:whatsapp/Pages/ChatPages.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AdaApaApp"),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return [
              PopupMenuItem(child: Text("New Group"), value: "New Group"),
              PopupMenuItem(
                  child: Text("New Broadcast"), value: "New Broadcast"),
              PopupMenuItem(child: Text("Whatsapp Web"), value: "Whatsapp Web"),
              PopupMenuItem(
                  child: Text("Starred Messages"), value: "Starred Messages"),
              PopupMenuItem(child: Text("Settings"), value: "Settings"),
            ];
          })
        ],
        bottom: TabBar(
            controller: _controller,
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(
                text: "CHAT",
              ),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ]),
      ),
      body: TabBarView(
        controller: _controller,
        children: [
          Text("Camera"),
          ChatPage(),
          Text("Camera"),
          Text("Camera"),
        ],
      ),
    );
  }
}
