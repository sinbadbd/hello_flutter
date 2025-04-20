import 'package:flutter/material.dart';
import 'package:hello_flutter/Utils/emotioncs_face.dart';
import 'package:hello_flutter/exercise_title.dart';

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
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "hello, World",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "23, jan, 2025",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w100),
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
                    ),
                    const SizedBox(height: 16),
                    //Search Box

                    Container(
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.circular(8)),
                      padding: EdgeInsets.all(8),
                      child: const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8),
                          Text(
                            "Search",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                    ),

                    const SizedBox(height: 25),

                    //How do you feel
                    const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("How do you feel?",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                          Icon(
                            Icons.more_horiz,
                            color: Colors.white,
                          ),
                        ]),
                    const SizedBox(height: 24),

                    // Different face
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // bad
                        Column(
                          children: [
                            EmotIconFace(
                              emoticon: "😞",
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Sad",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                        // fine
                        Column(
                          children: [
                            EmotIconFace(
                              emoticon: "😞",
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Sad",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),

                        //well
                        Column(
                          children: [
                            EmotIconFace(
                              emoticon: "😞",
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Sad",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),

                        //excelent
                        Column(
                          children: [
                            EmotIconFace(
                              emoticon: "😞",
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Sad",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Expanded(
                  child: Container(
                padding: EdgeInsets.all(25),
                color: Colors.grey[100],
                child: Center(
                  child: Column(
                    children: [
                      // expercise handle
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Experises",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          Icon(Icons.more_horiz),
                        ],
                      ),
                      // List
                      const SizedBox(height: 20),

                      Expanded(
                          child: ListView(
                        children: const [
                          ExcercisRow(
                              icon: Icons.abc,
                              title: "Speaking Skills",
                              subTitle: "16 Exp..."),
                          ExcercisRow(
                              icon: Icons.g_mobiledata,
                              title: "For other release channels",
                              subTitle: "12.."),
                          ExcercisRow(
                              icon: Icons.kayaking,
                              title: "Consider creating",
                              subTitle: "12 ,,"),
                        ],
                      ))
                    ],
                  ),
                ),
              ))
            ],
          ),
        ));
  }
}
