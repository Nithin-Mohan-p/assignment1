import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});
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
  var subnames = [
    "Wher Are You",
    "Wher Are You",
    "Wher Are You",
    "Wher Are You",
    "Wher Are You",
    "Wher Are You",
    "Wher Are You",
    "Wher Are You",
    "Wher Are You",
    "Wher Are You"
  ];
  var tratime = [
    "12:04 am",
    "12:04 am",
    "12:04 am",
    "12:04 am",
    "12:04 am",
    "12:04 am",
    "12:04 am",
    "12:04 am",
    "12:04 am",
    "12:04 am",
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
                trailing: Text(tratime[index]),
                title: Text(
                  titlenames[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Text(subnames[index]),
                ),
              );
            },
            separatorBuilder: (context, intex) {
              return const Divider(
                thickness: 0,
                height: 30,
              );
            },
            itemCount: images.length));
  }
}
