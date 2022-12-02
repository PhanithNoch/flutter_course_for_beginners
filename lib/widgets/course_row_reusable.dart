import 'package:flutter/material.dart';

class CourseRowReusable extends StatelessWidget {

  const CourseRowReusable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      width: 250,
      decoration: const BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text(
                  'Swift 5',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Expanded(
                    child: Image.network(
                      'https://www.pngkey.com/png/full/128-1286315_bird-logo-vector-2-buy-clip-art-swift.png',
                      height: 70,
                    ))
              ],
            ),
            const Text('Learn Swift 5',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey))
          ],
        ),
      ),
    );
  }
}
