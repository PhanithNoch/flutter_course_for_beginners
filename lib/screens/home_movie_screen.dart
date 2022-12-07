import 'package:flutter/material.dart';

class HomeMovieScreen extends StatelessWidget {
   HomeMovieScreen({Key? key}) : super(key: key);
  final _lstTrending = [
    'https://www.nowtv.now.com/wp-content/uploads/2020/01/Spider-Man-No-Way-Home-Extended-Version-mobile.jpg',
    'https://lumiere-a.akamaihd.net/v1/images/p_aladdin2019_17638_d53b09e6.jpeg',
    'https://tafttoday.com/wp-content/uploads/2019/05/MV5BZTliNWJhM2YtNDc1MC00YTk1LWE2MGYtZmE4M2Y5ODdlNzQzXkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_-1-568x900.jpg',
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/11/adipurush002.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('THE MOVIES',style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommened for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  InkWell(child: Text('See all',style: TextStyle(fontWeight: FontWeight.w600),),onTap: (){
                    print('tapped');
                  },),
                ],
              ),
             SizedBox(
               height: 200,
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommened for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  InkWell(child: Text('See all',style: TextStyle(fontWeight: FontWeight.w600),),onTap: (){
                    print('tapped');
                  },),
                ],
              ),

              SizedBox(
                height: 200,
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


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommened for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  InkWell(child: Text('See all',style: TextStyle(fontWeight: FontWeight.w600),),onTap: (){
                    print('tapped');
                  },),
                ],
              ),
              SizedBox(
                height: 200,
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommened for you',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                  InkWell(child: Text('See all',style: TextStyle(fontWeight: FontWeight.w600),),onTap: (){
                    print('tapped');
                  },),
                ],
              ),

              SizedBox(
                height: 200,
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
          ),
        ),
      ),
    );
  }
}
