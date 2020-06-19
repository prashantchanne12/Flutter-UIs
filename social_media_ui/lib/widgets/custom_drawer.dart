import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socialmediaui/data/data.dart';
import 'package:socialmediaui/screens/home_screen.dart';
import 'package:socialmediaui/screens/login_screen.dart';
import 'package:socialmediaui/screens/profile_screen.dart';

class CustomDrawer extends StatelessWidget {
  _buildDrawerOption(Icon icon, String title, Function onTap) {
    return ListTile(
      onTap: onTap,
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image(
                height: 200.0,
                width: double.infinity,
                image: AssetImage(currentUser.backgroundImageUrl),
                fit: BoxFit.cover,
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 3.0,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      child: ClipOval(
                        child: Image(
                          image: AssetImage(currentUser.profileImageUrl),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 6.0,
                    ),
                    Text(
                      currentUser.name,
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildDrawerOption(
            Icon(Icons.dashboard),
            'Home',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => HomeScreen()),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.chat),
            'Chat',
            () {},
          ),
          _buildDrawerOption(
            Icon(Icons.location_on),
            'Map',
            () {},
          ),
          _buildDrawerOption(
            Icon(Icons.account_circle),
            'Profile',
            () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => ProfileScreen(currentUser)),
            ),
          ),
          _buildDrawerOption(
            Icon(Icons.settings),
            'Settings',
            () {},
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: _buildDrawerOption(
                Icon(Icons.directions_run),
                'Logout',
                () => Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) => LoginScreen()),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
