import 'package:flutter/material.dart';

class ExcercisRow extends StatelessWidget {
  final icon;
  final String title;
  final String subTitle;

  const ExcercisRow(
      {super.key,
      required this.icon,
      required this.title,
      required this.subTitle});

  @override
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    padding: EdgeInsets.all(16),
                    color: Colors.orange,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                // Icon(Icons.favorite),

                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      subTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
