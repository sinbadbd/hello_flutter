import 'package:flutter/material.dart';

class EmotIconFace extends StatelessWidget {
  final String emoticon;
  //final String emottitle;
  const EmotIconFace({
    super.key,
    required this.emoticon,
    //  required this.emottitle
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Text(
            emoticon,
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
          //Text(emottitle)
        ],
      ),
    );
  }
}
