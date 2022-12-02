import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          CardReusableWidget(
            profileUrl:
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
            name: 'Dara',
            date: 'Today, 5:00 PM',
            postImageURL: 'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
            likeCount: '1k',
            commentCount: '100',
          ),

          CardReusableWidget(
            profileUrl:
            'https://static-cse.canva.com/blob/975732/1600w-EW4cggXkgbc.jpg',
            name: 'Dara',
            date: 'Today, 5:00 PM',
            postImageURL: 'https://static-cse.canva.com/blob/975732/1600w-EW4cggXkgbc.jpg',
            likeCount: '1k',
            commentCount: '100',
          ),

          CardReusableWidget(
            profileUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzHQv_th9wq3ivQ1CVk7UZRxhbPq64oQrg5Q&usqp=CAU',
            name: 'Dara',
            date: 'Today, 5:00 PM',
            postImageURL: 'https://t4.ftcdn.net/jpg/03/64/21/11/360_F_364211147_1qgLVxv1Tcq0Ohz3FawUfrtONzz8nq3e.jpg',
            likeCount: '1k',
            commentCount: '100',
          ),
        ],
      ),
    );
  }
}

class CardReusableWidget extends StatelessWidget {
  final String profileUrl;
  final String name;
  final String date;
  final String postImageURL;
  final String likeCount;
  final String commentCount;

  const CardReusableWidget({
    Key? key,
    required this.profileUrl,
    required this.name,
    required this.date,
    required this.postImageURL,
    required this.likeCount,
    required this.commentCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    profileUrl,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    ),
                    Text(
                      date,
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Image.network(postImageURL),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  '$likeCount Likes',
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
                SizedBox(
                  width: 20,
                ),
                Text('$commentCount Comments',
                    style: TextStyle(color: Colors.grey, fontSize: 11)),
              ],
            ),
            Divider(
              height: 10,
              color: Colors.grey,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.thumb_up,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Like',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.comment,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Comments',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.share,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                      Text(
                        'Share',
                        style: TextStyle(fontSize: 11),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
