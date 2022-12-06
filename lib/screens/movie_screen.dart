import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _lstTrending = [
    'https://www.nowtv.now.com/wp-content/uploads/2020/01/Spider-Man-No-Way-Home-Extended-Version-mobile.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_aladdin2019_17638_d53b09e6.jpeg',
    'https://tafttoday.com/wp-content/uploads/2019/05/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_-1-568x900.jpg',
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/11/adipurush002.jpg'
  ];

  final pageController = PageController(viewportFraction: 1 / 2);
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text('Pocket TV'),
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          Text(
            "Trending",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 330,
            child: PageView.builder(
              onPageChanged: (int index) {
                setState(() {
                  currentPage = index;
                });
              },
              controller: pageController,
              reverse: false,
              // pageSnapping: false,
              itemCount: _lstTrending.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      child: Image.network(
                        _lstTrending[index],
                        fit: BoxFit.cover,
                      )),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _lstTrending
                .mapIndexed((int index, element) => Container(
              height: 12,
              width: 20,
              decoration: BoxDecoration(
                color:
                index == currentPage ? Colors.blue : Colors.white,
                shape: BoxShape.circle,
              ),
            ))
                .toList(),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'New Movies',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _lstTrending.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Column(
                      children: [
                        SizedBox(
                            child: Image.network(
                              _lstTrending[index],
                              width: 200,
                              height: 200,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(
                          height: 5,
                        ),
                        Expanded(child: Text('New Movie')),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
