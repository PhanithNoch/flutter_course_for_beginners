import 'package:flutter/material.dart';

import 'movie_detail_screen.dart';

class GridViewMovieScreen extends StatelessWidget {
   GridViewMovieScreen({Key? key}) : super(key: key);
  final _lstTrending = [
    'https://www.nowtv.now.com/wp-content/uploads/2020/01/Spider-Man-No-Way-Home-Extended-Version-mobile.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_aladdin2019_17638_d53b09e6.jpeg',
    'https://tafttoday.com/wp-content/uploads/2019/05/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_-1-568x900.jpg',
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/11/adipurush002.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQUdmaQt83thAC9SIX8jmxQWuqM23Jc4I7n9w&usqp=CAU',
    'https://gumlet.assettype.com/film-companion%2Fimport%2Fwp-content%2Fuploads%2F2022%2F08%2FDiary-1.jpg?auto=format%2Ccompress&fit=max&w=1200',
    'https://cdn.moviefone.com/admin-uploads/posters/lightyear-movie-poster_1653269730.jpg?d=360x540&q=80',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Popular Movies',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/previews/002/275/847/original/male-avatar-profile-icon-of-smiling-caucasian-man-vector.jpg'),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: OrientationBuilder(
      builder: (context, orientation) {
        return GridView.builder(
          itemCount: _lstTrending.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: orientation == Orientation.portrait ? 2 : 4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: (){
                print('Movie Clicked');
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MovieDetailScreen()));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  _lstTrending[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        );
      },
        ),
      ),
    );
  }
}
