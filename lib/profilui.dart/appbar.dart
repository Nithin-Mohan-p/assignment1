import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class FirstSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: const Padding(
            padding: EdgeInsets.only(left: 15, top: 5),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 5),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              height: 150,
              child: const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 50,
                  backgroundImage: AssetImage(
                    "images/th.jpeg",
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.facebook,
                      size: 40,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.whatsapp,
                      size: 40,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.facebook,
                      size: 40,
                      color: Colors.blue,
                    ),
                    SizedBox(width: 15),
                    Icon(
                      Icons.whatsapp,
                      size: 40,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              color: Colors.white,
              height: 100,
              child: Column(
                children: const [
                  Text(
                    "Nithin",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "@Developer",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Mobil App Developer",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 35, right: 35),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfilTile(
                      txt: "privacy",
                      icon: const Icon(
                        Icons.privacy_tip,
                        color: Colors.black,
                      ),
                    ),
                    ProfilTile(
                      txt: "purchace History",
                      icon: const Icon(
                        Icons.history,
                        color: Colors.black,
                      ),
                    ),
                    ProfilTile(
                      txt: "Help & Support",
                      icon: const Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                    ),
                    ProfilTile(
                      txt: "Settings",
                      icon: const Icon(
                        Icons.settings,
                        color: Colors.black,
                      ),
                    ),
                    ProfilTile(
                      txt: "Invite a Freind",
                      icon: const Icon(
                        Icons.mobile_friendly,
                        color: Colors.black,
                      ),
                    ),
                    ProfilTile(
                      txt: "Logout",
                      icon: const Icon(
                        Icons.logout,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProfilTile extends StatelessWidget {
  final String txt;
  final Icon icon;

  ProfilTile({super.key, required this.txt, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[200],
      ),
      child: ListTile(
        dense: true,
        title: Text(
          txt,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: Icon(
          Icons.arrow_right,
          color: Colors.black,
        ),
      ),
    );
  }
}
