import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const  [
          NotificationCardReusableWidget(
            profileUrl:
                'https://static-cse.canva.com/blob/975732/1600w-EW4cggXkgbc.jpg',
            name: 'Clarissa Jones',
            date: '10 mins',
          ),
          NotificationCardReusableWidget(
            profileUrl:
            'https://static-cse.canva.com/blob/975732/1600w-EW4cggXkgbc.jpg',
            name: 'Clarissa Jones',
            date: '10 mins',
          ),

          NotificationCardReusableWidget(
            profileUrl:
            'https://static-cse.canva.com/blob/975732/1600w-EW4cggXkgbc.jpg',
            name: 'Clarissa Jones',
            date: '10 mins',
          ),
          NotificationCardReusableWidget(
            profileUrl:
            'https://static-cse.canva.com/blob/975732/1600w-EW4cggXkgbc.jpg',
            name: 'Clarissa Jones',
            date: '10 mins',
          ),
        ],
      ),
    );
  }
}

class NotificationCardReusableWidget extends StatelessWidget {
  final String profileUrl;
  final String name;
  final String date;
  const NotificationCardReusableWidget({
    Key? key,
    required this.profileUrl,
    required this.name,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(profileUrl),
            ),
            const SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(' commented on your post'),
                  ],
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                ),
              ],
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
          ],
        ),
      ),
    );
  }
}
