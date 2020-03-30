import 'package:ecocycle/screens/leader.dart';
import 'package:ecocycle/screens/profile.dart';
import 'package:ecocycle/screens/post_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'styles.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EcoCycle",
          style: Styles.navBarTitle,
        ),
      ),
      body: SafeArea(
          child: ListView(scrollDirection: Axis.vertical, children: [
            CupertinoButton(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width, //half way
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        "https://images.squarespace-cdn.com/content/v1/5862e6e9bebafb318d9b5ed6/1483646784305-CF8XQZH8MPCUBBW6WP6L/ke17ZwdGBToddI8pDm48kNvT88LknE-K9M4pGNO0Iqd7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1USOFn4xF8vTWDNAUBm5ducQhX-V3oVjSmr829Rco4W2Uo49ZdOtO_QXox0_W7i2zEA/explore.jpg?format=2500w"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "Browse",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              onPressed: () => _navigateToBrowse(context),
            ),
            CupertinoButton(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width, //half way
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        "https://www.clevelandymca.org/uploads/2/5/2/8/25280116/summer-challenge-website-logo_2_orig.png"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "LeaderBoard",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              onPressed: () => _navigateToLeaderboard(context),
            ),
            CupertinoButton(
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width, //half way
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                        "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Container(
                  margin: EdgeInsets.fromLTRB(15, 15, 0, 0),
                  child: Text(
                    "Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              onPressed: () => _navigateToProfile(context),
            ),
          ])),
    );
  }
  void _navigateToBrowse(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PostPage(),
        ));
  }
  void _navigateToLeaderboard(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LeaderPage(),
        ));
  }
  void _navigateToProfile(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ProfilePage(),
        ));
  }

}