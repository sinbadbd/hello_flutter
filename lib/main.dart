// import 'dart:ffi';

// ignore_for_file: empty_constructor_bodies

import 'package:flutter/material.dart';
import 'package:hello_flutter/bottom_nav_Bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavigationBarExample(),
    );
  }
}

class TitleText extends StatelessWidget {
  @override
  Widget build(BuildContext content) {
    return Text("Hello world 2");
  }
}

class CounterScreen extends StatefulWidget {
  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;

  @override
  Widget build(BuildContext content) {
    return Column(
      children: [
        Text("Counter: $count"),
        Text("sdf"),
        Text("A"),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Csdfsdfsd"),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            child: const Text("Increment"),
          ),
        )
      ],
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   title: Text(widget.title),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // TitleText(),
            // CounterScreen(),
            ImageSection(image: 'iphone14.png'),
            TitleSection(name: "Rangpur", location: "21323.12312"),
            ButtonSection(),
          ],
        ),
      ),
    );
  }
}

// 1. Build a Flutter layout
// What you'll learn
// How to layout widgets next to each other.
// How to add space between widgets.
// How adding and nesting widgets results in a Flutter layout.

class TitleSection extends StatelessWidget {
  //const TitleSection({ super.key, required this.title, required this.subtitle });
  final String name;
  final String location;

  const TitleSection({
    super.key,
    required this.name,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            //1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //2
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
                const Text('41'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;

    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: "CALL"),
          ButtonWithText(color: color, icon: Icons.near_me, label: "RPUTE"),
          ButtonWithText(color: color, icon: Icons.share, label: "SHARE"),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText(
      {super.key,
      required this.color,
      required this.icon,
      required this.label});

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(fontWeight: FontWeight.w400, color: color),
          ),
        ),
      ],
    );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
  }
}
