import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gridview_sample/whatsapp/calls.dart';
import 'package:gridview_sample/whatsapp/chatscreen.dart';
import 'package:gridview_sample/whatsapp/contactScreen.dart';
import 'package:gridview_sample/whatsapp/status.dart';

class MyTab extends StatelessWidget {
  const MyTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            toolbarHeight: 100,
            title: const Padding(
              padding: EdgeInsets.only(top: 20, left: 5),
              child: Text(
                "whatsapp",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 4, right: 15),
                child: Icon(
                  Icons.search,
                  size: 28,
                ),
              ),
              PopupMenuButton(
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 6,
                    child: Column(
                      children: const [
                        Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "New Group",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
            bottom: const TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.people),
                ),
                Tab(
                  text: "Chats",
                  // height: 30,
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ContactScreen(),
              ChatScreen(),
              StatusScreen(),
              CallsScreen(),

              //const MyStack(),
              // const StaggeredGridview1(),
            ],
          ),
        ),
      ),
    );
  }
}
