import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.notifications_outlined))],
        ),
        body: const Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hello, Sara Rose"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("How are you feeling today"),
                ],
              ),
            ),
          ],
        ));
  }
}
