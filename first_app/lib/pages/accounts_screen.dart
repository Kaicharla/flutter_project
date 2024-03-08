import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(109, 96, 248, 1),
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Profile',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(109, 96, 248, 1),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          PopupMenuButton(
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (BuildContext context) {
              return <PopupMenuEntry>[
                const PopupMenuItem(
                  child: Text('Option 1'),
                  value: 'option1',
                ),
                const PopupMenuItem(
                  child: Text('Option 2'),
                  value: 'option2',
                ),
                const PopupMenuItem(
                  child: Text('Option 3'),
                  value: 'option3',
                ),
              ];
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 255, 255, 255), // Change border color to blue
                    width: 3,
                  ),
                ),
                child: const CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.blue, // Change circle color to blue
                  backgroundImage: AssetImage(
                      'assets/images/accountscreen.jpg'), // Add your image asset path here
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Text(
                    'Karun Kumar',
                    style: GoogleFonts.poppins(
                      fontSize: 24.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 2), // Adding space between the texts
                  Text(
                    'Student',
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: InkWell(
                      onTap: () {
                        // Add functionality for adding friend
                      },
                      child: Container(
                        width: 220,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20), // Adjust padding here
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Add Friend',
                              style: GoogleFonts.poppins(
                                fontSize: 16.0,
                                color: const Color.fromRGBO(109, 96, 248, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromRGBO(109, 96, 248,
                                    1), // Background color for the circle
                              ),
                              padding: const EdgeInsets.all(10),
                              child: const Icon(
                                Icons.add,
                                color: Colors.white, // Icon color
                                size: 24,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 60),
            // Text widgets above Cards
            // Text widgets above Cards
            // Text widgets above Cards
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '2',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'COURSES',
                        style: TextStyle(
                          color: Color.fromRGBO(191, 183, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '   |   ', // Increased the size of '|'
                    style: TextStyle(
                      color: Color.fromRGBO(191, 183, 255, 1),
                      fontSize: 50, // Adjust the font size here
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '1100',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'POINTS',
                        style: TextStyle(
                          color: Color.fromRGBO(191, 183, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '   |   ', // Increased the size of '|'
                    style: TextStyle(
                      color: Color.fromRGBO(191, 183, 255, 1),
                      fontSize: 50, // Adjust the font size here
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        '14',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'RANK',
                        style: TextStyle(
                          color: Color.fromRGBO(191, 183, 255, 1),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 60),
            // Cards
            const SizedBox(
              height: 80, // Set the desired height for the cards
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10), // Add padding from the bottom
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20), // Adjust padding
                    leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(219, 214, 254, 1),
                      child: Icon(
                        Icons.person,
                        color: Color.fromRGBO(109, 96, 248, 1),
                      ),
                    ),
                    title: Text(
                      'Profile',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(109, 96, 248, 1)),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    iconColor: Color.fromRGBO(109, 96, 248, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 90, // Set the desired height for the cards
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10), // Add padding from the bottom
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20), // Adjust padding
                    leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(219, 214, 254, 1),
                      child: Icon(
                        Icons.bar_chart,
                        color: Color.fromRGBO(109, 96, 248, 1),
                      ),
                    ),
                    title: Text(
                      'Results',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(109, 96, 248, 1)),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),
                    iconColor: Color.fromRGBO(109, 96, 248, 1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 80, // Set the desired height for the cards
              child: Card(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Padding(
                  padding:
                      EdgeInsets.only(top: 10), // Add padding from the bottom
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 20), // Adjust padding
                    leading: CircleAvatar(
                      backgroundColor: Color.fromRGBO(219, 214, 254, 1),
                      child: Icon(
                        Icons.leaderboard,
                        color: Color.fromRGBO(109, 96, 248, 1),
                      ),
                    ),
                    title: Text(
                      'Ranking',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(109, 96, 248, 1)),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios),

                    iconColor: Color.fromRGBO(109, 96, 248, 1),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
