import 'package:flutter/material.dart';
import 'package:learning_flutter/screens/home_screen.dart';
import 'package:learning_flutter/screens/notification_screen.dart';
import 'package:learning_flutter/screens/profile_screen.dart';

void main() {
  runApp(Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int selectedIndex = 0;

  List lstScreens = [
    HomeView(),
    NotificationScreen(),
    ProfileScreen(),
    Center(child: Text('Settings'),),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text('Jonhson'),
              accountEmail: Text('jonhshon@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAAM6tPoBpw4QYM8zLSKkoeSDibO3uFqdU5g&usqp=CAU'),
              ),
            ),
            ListTile(
              onTap: () {

              },
              title: Text('Home'),
              leading: Icon(Icons.home),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {},
              title: Text('Courses'),
              leading: Icon(Icons.video_collection_rounded),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              onTap: () {},
              title: Text('Contact'),
              leading: Icon(Icons.contact_page),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: ListTile(
                onTap: () {},
                title: Text('Logout'),
                leading: Icon(Icons.logout),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          ],
        ),
      ),

      body: lstScreens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
         selectedIndex = index;
         setState(() {

         });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
        ],

      ),

    );
  }
}
