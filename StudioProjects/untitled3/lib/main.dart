import 'package:flutter/material.dart';

void main() {
  runApp(AccountApp());
}

class AccountApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Account(),
    );
  }
}

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white24,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white24,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildSectionHeader("PROFILE"),
                SizedBox(height: 2),
                _buildProfileButton(
                  label: "VESIT\n VESIT \t\t \t\t",
                  onPressed: () {
                    print("You pressed Profile Button");
                  },
                ),
                SizedBox(height: 10),
                _buildSectionHeader("FEATURES"),
                SizedBox(height: 10),
                _buildFeatureButton(
                  label: "Memories \t \t \t \t \t \t \t \t \t \t \t \t",
                  icon: Icons.calendar_today,
                  onPressed: () {
                    print("You pressed Memories Button");
                  },
                ),
                SizedBox(height: 2),
                _buildFeatureButton(
                  label: "Blocked Profile",
                  icon: Icons.block,
                  onPressed: () {
                    print("You pressed Blocked Profile Button");
                  },
                ),
                SizedBox(height: 10),
                _buildSectionHeader("SETTINGS"),
                SizedBox(height: 10),
                _buildFeatureButton(
                  label: "Notifications \t \t",
                  icon: Icons.notifications,
                  onPressed: () {
                    print("You pressed Notifications Button");
                  },
                ),
                SizedBox(height: 2),
                _buildFeatureButton(
                  label: "Time Zone \t \t \t \t \t \t \t \t \t \t   ",
                  icon: Icons.access_time,
                  onPressed: () {
                    print("You pressed Time Zone Button");
                  },
                ),
                SizedBox(height: 2),
                _buildFeatureButton(
                  label: "Others \t \t\t\t\t\t\t\t\t\t",
                  icon: Icons.settings_suggest,
                  onPressed: () {
                    print("You pressed Others Button");
                  },
                ),
                SizedBox(height: 10),
                _buildSectionHeader("ABOUT"),
                SizedBox(height: 10),
                _buildFeatureButton(
                  label: "Share BeReal\t \t \t",
                  icon: Icons.share,
                  onPressed: () {
                    print("You pressed Share BeReal Button");
                  },
                ),
                SizedBox(height: 2),
                _buildFeatureButton(
                  label: "Rate \t\t\t\t \t \t  \t  ",
                  icon: Icons.star_outline,
                  onPressed: () {
                    print("You pressed Rate Button");
                  },
                ),
                SizedBox(height: 2),
                _buildFeatureButton(
                  label: "Help \t \t \t \t \t \t \t \t \t \t  \t \t \t   ",
                  icon: Icons.help_outline,
                  onPressed: () {
                    print("You pressed Help Button");
                  },
                ),
                SizedBox(height: 2),
                _buildFeatureButton(
                  label: "About \t \t\t\t\t\t\t\t\t\t",
                  icon: Icons.info,
                  onPressed: () {
                    print("You pressed About Button");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        VerticalDivider(
          color: Colors.transparent,
          thickness: 1,
          width: 10, // Adjust the width as needed
        ),
      ],
    );
  }

  Widget _buildProfileButton({required String label, required VoidCallback onPressed}) {
    return Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          Icons.account_circle,
          color: Colors.white,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrangeAccent,
          padding: EdgeInsets.fromLTRB(10, 20, 247, 20),
        ),
      ),
    );
  }

  Widget _buildFeatureButton({required String label, required IconData icon, required VoidCallback onPressed}) {
    return Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
        label: Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrangeAccent,
          padding: EdgeInsets.fromLTRB(10, 20, 225, 20),
        ),
      ),
    );
  }
}
