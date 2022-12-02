import 'package:flutter/material.dart';


// what is row? and what is column
class RowColumScreen extends StatelessWidget {
  const RowColumScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
        ),
        /// container widget a widget used to apply background style
        body:Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.red[400],
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5))
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('COURSE',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                        const SizedBox(
                          height: 20,
                        ),
                        Text('JAVASCRIPT FUNDAMENTALS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 22),),
                        Spacer(),

                        Row(
                          children: const [
                            Text('View all charters',style: TextStyle(color: Colors.white),),
                            Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,)
                          ],
                        ),
                      ],
                    ),
                  ),
                ),



                Container(
                  height: 180,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color:Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.3),
                          blurRadius: 4,
                          offset: Offset(4, 8), // Shadow position
                        ),
                      ]
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('CHATER 5'),


                            Column(

                              children: [
                                Row(

                                  children: [
                                    Container(
                                      width: 100,
                                      height: 5,
                                      decoration: BoxDecoration(
                                          color: Colors.red,
                                          borderRadius: BorderRadius.only(topLeft: Radius.circular(4))),
                                    ),

                                    Container(
                                      width: 100,
                                      height: 5,
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,

                                      ),
                                    ),
                                  ],
                                ),
                                Text('08/16')
                              ],
                            )
                          ],
                        ),

                        Row(
                          children: [
                            Text('Types of Arrays & String',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),

                          ],
                        ),
                        Spacer(),
                        Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.red[600],
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.blueGrey.withOpacity(0.3),
                                  blurRadius: 4,
                                  offset: Offset(4, 8), // Shadow position
                                ),
                              ]
                          ),
                          child: Text('Continue',style: TextStyle(color: Colors.white),),
                        ),

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}

