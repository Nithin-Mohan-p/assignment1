import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Tourism2(),
    debugShowCheckedModeBanner: false,
  ));
}

class Tourism2 extends StatefulWidget {
  @override
  State<Tourism2> createState() => _Tourism2State();
}

class _Tourism2State extends State<Tourism2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Image(
            image: AssetImage('assets/iconair.png'),
            height: 250,
            width: 300,
          ),

          // SizedBox(
          //   height: 15,
          // ),
          Center(
            child: SizedBox(
                height: 35,
                width: 300,
                child: ElevatedButton(
                    onPressed: () {
                      //   Navigator.push(context, MaterialPageRoute(builder: (context) => ));
                    },
                    child: const Text("Login"))),
          ),

          const Padding(
            padding: EdgeInsets.only(top: 10.0),
            child: Text(
              "Or",
              style: TextStyle(fontSize: 15, color: Colors.grey),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Card(
            color: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            child: const ListTile(
              title: Text(
                "Login With Facebook",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              trailing: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/facebook.png')),
            ),
          ),
          Card(
              color: Colors.white54,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35)),
              child: const ListTile(
                title: Text(
                  "Login With Twitter",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                trailing: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/twitter.jpg'),
                ),
              )),
          Card(
            color: Colors.orangeAccent,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(35)),
            child: const ListTile(
              title: Text(
                "Login With Google",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              trailing: CircleAvatar(
                  backgroundImage: AssetImage('assets/images/google.png')),
            ),
          ),
        ],
      ),
    );
  }
}
