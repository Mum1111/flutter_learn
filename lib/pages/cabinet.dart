import 'package:flutter/material.dart';

class Cabinet extends StatelessWidget {
  const Cabinet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage("images/test.jpeg"),
          ),
          const Text(
            '昵称',
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontFamily: 'DaoLiTi',
                fontWeight: FontWeight.bold),
          ),
          Text(
            '让天下没有难做的生意',
            style: TextStyle(
                color: Colors.teal.shade100,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                letterSpacing: 2.5),
          ),
          SizedBox(
            height: 20.0,
            width: 150.0,
            child: Divider(
              color: Colors.teal.shade200,
            ),
          ),
          Card(
            margin:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
            child: ListTile(
              leading: const Icon(
                Icons.phone,
                color: Colors.teal,
              ),
              title: Text(
                '123',
                style: TextStyle(color: Colors.teal.shade800),
              ),
            ),
          ),
          Card(
              margin:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: ListTile(
                leading: const Icon(
                  Icons.email,
                  color: Colors.teal,
                ),
                title: Text(
                  '123',
                  style: TextStyle(color: Colors.teal.shade800),
                ),
              ))
        ],
      )),
    );
  }
}
