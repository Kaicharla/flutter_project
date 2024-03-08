import 'package:flutter/material.dart';
import 'login_screen.dart'; // Import the login screen
import 'accounts_screen.dart';
import 'package:carousel_slider/carousel_slider.dart';

// Import the account screen

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Save',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Notify',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    AccountScreen(), // Replace with AccountScreen widget
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    // Navigate to AccountScreen when the Account icon is clicked
    if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AccountScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/bg.png', // Provide the path to your background image asset
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: kToolbarHeight + 80, // Adjust the top position as needed
              left: 16, // Adjust the left position as needed
              child: Container(
                width: 380, // Adjust the width as needed
                height: 180, // Adjust the height as needed
                child: CarouselSlider(
                  items: [
                    // Wrap each Image.asset widget inside a Container
                    Container(
                      child: Image.asset('assets/images/about.png'),
                    ),
                    Container(
                      child: Image.asset('assets/images/popularcourses.png'),
                    ),
                    Container(
                      child: Image.asset('assets/images/homescreencover.png'),
                    ),
                  ],
                  options: CarouselOptions(
                    // Configure carousel options here
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            Positioned(
              top: kToolbarHeight + 280, // Adjust the top position as needed
              left: 20, // Adjust the left position as needed
              child: Text(
                'Categories',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
            ),
            Positioned(
              top: kToolbarHeight + 320, // Adjust the top position as needed
              left: 8, // Adjust the left position as needed
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 18),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 5, // Add elevation for a shadow effect
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/firstbox.png',
                              width: 180,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 18),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 5, // Add elevation for a shadow effect
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/secondbox.png',
                              width: 180,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                      height:
                          20), // Increase the gap between the images and the Categories text
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 18),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 5, // Add elevation for a shadow effect
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/thirdbox.png',
                              width: 180,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          elevation: 5, // Add elevation for a shadow effect
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/fourthbox.png',
                              width: 180,
                              height: 180,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                appBar: AppBar(
                  title: Text(
                    'Learning',
                    style: TextStyle(
                      color: Colors.white, // Set text color to white
                    ),
                  ),
                  backgroundColor: Color.fromRGBO(
                      255, 255, 255, 0), // Make the app bar transparent
                  elevation: 0, // Remove app bar shadow
                  iconTheme: IconThemeData(
                    color: Colors.white, // Set icon color to white
                  ),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Implement your search functionality here
                      },
                    ),
                  ],
                ),
                drawer: Drawer(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: <Widget>[
                      DrawerHeader(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        child: Text(
                          'Drawer Header',
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontSize: 24,
                          ),
                        ),
                      ),
                      ListTile(
                        title: Text('Logout',
                            style: TextStyle(
                                color: const Color.fromARGB(
                                    255, 0, 0, 0))), // Set text color to white
                        onTap: () {
                          // Handle logout
                          Navigator.pop(context); // Close the drawer
                          Navigator.pushReplacement(
                            // Navigate to login screen and replace the current screen
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpScreen()),
                          );
                        },
                      ),
                    ],
                  ),
                ),
                bottomNavigationBar: BottomNavigationBar(
                  type: BottomNavigationBarType.fixed, // Disable animation
                  items: const <BottomNavigationBarItem>[
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.bookmark_border),
                      label: 'Save',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.notifications_outlined),
                      label: 'Notify',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.person_2_outlined),
                      label: 'Account',
                    ),
                  ],
                  currentIndex: 0, // Set initial selected item index
                  selectedItemColor: Color.fromRGBO(109, 96, 248, 1),
                  unselectedItemColor: Color.fromRGBO(0, 0, 0, 1),
                  onTap: _onItemTapped,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
