import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gridview_sample/nav/about.dart';
import 'package:gridview_sample/nav/event.dart';
import 'package:gridview_sample/nav/homescreen.dart';
import 'package:gridview_sample/nav/invites.dart';
import 'package:gridview_sample/nav/signout.dart';
import 'package:gridview_sample/nav/task.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[300],
        title: const Text("FIRST SCREEN"),
      ),
      drawer: Theme(
        data: Theme.of(context).copyWith(canvasColor: Colors.white),
        child: Drawer(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.red,
                    Colors.orange,
                  ]),
            ),
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: const Text(
                    "Nithin Mohan",
                    style: TextStyle(color: Colors.white),
                  ),
                  accountEmail: const Text(
                    "nithin123@gmail.com",
                    style: TextStyle(color: Colors.white),
                  ),
                  currentAccountPicture: GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://www.filmibeat.com/img/2016/04/01-1459492531-dulquer-salmaan-142613651800.jpg"),
                    ),
                  ),
                  decoration: const BoxDecoration(
                      //color: Colors.black,
                      // image: DecorationImage(
                      //  fit: BoxFit.cover,
                      //   image: NetworkImage(
                      // "https://tse3.mm.bing.net/th?id=OIP.NAY3X8ZwIoIl570_EBUvpQHaFj&pid=Api&P=0"),
                      //  ),
                      ),
                  otherAccountsPictures: const [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://tse4.mm.bing.net/th?id=OIP.13xOcv2L6QLEt-61izE67AHaEK&pid=Api&P=0"),
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                          "https://images.cinemaexpress.com/uploads/user/imagelibrary/2017/12/4/original/Dulquer.jpg"),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Home",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.event,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "My Events",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Eventss1()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.task,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Tasks",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Task()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.mail,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Invite Freinds",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Invite()));
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.info,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "About",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const About()));
                  },
                ),
                const SizedBox(
                  height: 150,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.logout,
                    color: Colors.white,
                  ),
                  title: const Text(
                    "Sign Out",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const SignOut()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
