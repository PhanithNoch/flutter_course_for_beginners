import 'package:flutter/material.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({Key? key}) : super(key: key);

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  final _lstTrending = [
    'https://www.nowtv.now.com/wp-content/uploads/2020/01/Spider-Man-No-Way-Home-Extended-Version-mobile.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_aladdin2019_17638_d53b09e6.jpeg',
    'https://tafttoday.com/wp-content/uploads/2019/05/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_-1-568x900.jpg',
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/11/adipurush002.jpg'
  ];
  int? maxLine = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 400,
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.2)),
            child: Stack(
              children: [
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    'https://cdn.moviefone.com/admin-uploads/posters/lightyear-movie-poster_1653269730.jpg?d=360x540&q=80',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
                Positioned(
                    top: 80,
                    left: 0,
                    right: 0,
                    child: Column(
                      children: [
                        Text(
                          'Captain Marvel',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Actions, Adventure, Sci-Fi',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    )),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        // color: Colors.grey.withOpacity(0.3),
                        ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    'https://lumiere-a.akamaihd.net/v1/images/p_aladdin2019_17638_d53b09e6.jpeg',
                                    width: 150,
                                  )),

                              /// image section
                              ///
                              ///
                              /// text section
                              Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text(
                                          '(1,000) Review',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text(
                                          '(1,000) Review',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        Text(
                                          '(1,000) Review',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.08,
                                    ),
                                    Row(
                                      children: [
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.list,
                                              color: Colors.black87,
                                              size: 20,
                                            ),
                                            Text(
                                              'WatchList',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.favorite,
                                              color: Colors.black87,
                                              size: 20,
                                            ),
                                            Text(
                                              'WatchList',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          children: [
                                            Icon(
                                              Icons.share,
                                              color: Colors.black87,
                                              size: 20,
                                            ),
                                            Text(
                                              'Share',
                                              style: TextStyle(
                                                  color: Colors.black87,
                                                  fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                const    Text(
                  'Overview',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                    Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                  style: TextStyle(fontSize: 14),
                  overflow: TextOverflow.ellipsis,
                  maxLines: maxLine,
                ),
                InkWell(child: Text( maxLine == 3 ?'Read more'  : "See less",style: TextStyle(color: Colors.deepPurple),),onTap: (){
                  setState(() {
                    if(maxLine == 3){
                      maxLine = 10;
                    }
                    else{
                      maxLine = 3;
                    }
                  });
                },),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Cast'),
                    Text("view all"),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR72aEsvFKoRJpfaWB4G1ftrlpe8tN5O6rPhigr1s7UmPYWxH3PeYE2Z1Gqmv8VnT8qtsc&usqp=CAU'),
                        ),
                        Text('actor name'),
                      ],
                    ),

                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR72aEsvFKoRJpfaWB4G1ftrlpe8tN5O6rPhigr1s7UmPYWxH3PeYE2Z1Gqmv8VnT8qtsc&usqp=CAU'),
                        ),
                        Text('actor name'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR72aEsvFKoRJpfaWB4G1ftrlpe8tN5O6rPhigr1s7UmPYWxH3PeYE2Z1Gqmv8VnT8qtsc&usqp=CAU'),
                        ),
                        Text('actor name'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.transparent,
                          backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR72aEsvFKoRJpfaWB4G1ftrlpe8tN5O6rPhigr1s7UmPYWxH3PeYE2Z1Gqmv8VnT8qtsc&usqp=CAU'),
                        ),
                        Text('actor name'),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            child:       SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Recommendations',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _lstTrending.length,
                      itemBuilder: (context,index){
                        return Container(
                          margin: const EdgeInsets.all(8),
                          height: 200,
                          width: 160,
                          child: ClipRRect(borderRadius: BorderRadius.circular(10),child: Image.network(_lstTrending[index],fit: BoxFit.cover,)),
                        );
                      },
                    ),
                  ),
                ],
              )
            ),

          ),
        ],
      ),
    ));
  }
}
