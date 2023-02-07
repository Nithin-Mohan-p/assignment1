import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CallsScreen extends StatelessWidget {
  CallsScreen({super.key});
  var images = [
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg",
    "images/th.jpeg"
  ];
  var titlenames = [
    "Nithin1",
    "Nithin2",
    "Nithin3",
    "Nithin4",
    "Nithin5",
    "Nithin6",
    "Nithin7",
    "Nithin8",
    "Nithin9",
    "Nithin10",
  ];
  var time = [
    "5 mints ago",
    "5 mints ago",
    "5 mints ago",
    "5 mints ago",
    "5 mints ago",
    "5 mints ago",
    "5 mints ago",
    "5 mints ago",
    "5 mints ago",
    "5 mints ago"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              leading: Padding(
                padding: const EdgeInsets.only(right: 7),
                child: CircleAvatar(
                  backgroundImage: AssetImage(images[index]),
                ),
              ),
              title: Text(titlenames[index]),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(time[index]),
              ),
              trailing: Icon(Icons.call),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              thickness: 5,
              height: 20,
            );
          },
          itemCount: images.length),
    );
  }
}
