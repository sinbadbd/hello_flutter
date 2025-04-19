import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? Key}) : super(key: Key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      children: [
                        Text(
                          "hello, World",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "23, jan, 2025",
                          style: TextStyle(color: Colors.blue),
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
