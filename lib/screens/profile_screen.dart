import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              // color: Colors.red
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
               Positioned(child:  Image.network('https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__340.jpg',
                 fit: BoxFit.cover,height: 200,width: MediaQuery.of(context).size.width,),
               top: 0,),
                Positioned(
                  top: 120,
                  child: Column(
                    children: [
                    CircleAvatar(radius: 60,backgroundImage: NetworkImage('https://i.pinimg.com/736x/ac/58/e1/ac58e17f43518e57b452f49cce9dad0a.jpg'),
                    ),
                      const SizedBox(height: 10,),
                      Text('Ahmed',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
                      const SizedBox(height: 10,),
                      Text("I'm a flutter developer",style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),

                      SizedBox(height: 30,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[200],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Add to Story',style: TextStyle(color: Colors.black,fontSize: 11,),),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[200],
                                    ),
                                    child: Icon(Icons.remove_red_eye),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('View as',style: TextStyle(color: Colors.black,fontSize: 11,),),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[200],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Add to Story',style: TextStyle(color: Colors.black,fontSize: 11,),),
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.grey[200],
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                  SizedBox(height: 5,),
                                  Text('Add to Story',style: TextStyle(color: Colors.black,fontSize: 11,),),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
