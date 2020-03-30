import 'package:ecocycle/screens/leader.dart';
import 'package:flutter/material.dart';

class PostPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xffffffff), Color(0xffaeea00)],
          ),
        ),
        child: ListView(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 20),
            width: 380,
            height: 60,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xffaeea00), Color(0xffaeea00)],
                ),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text(
                  "Global Posts!!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontFamily: 'CentraleSansRegular'),
                ),
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://www.kauai.com/images/kauai-recycling.png',
                            height: 100,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                          title: Text('Bottle Recycling Rating: 4.5 / 5 ⭐')),
                    ],
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://tryengineering.org/wp-content/uploads/Recycling.png',
                            height: 100,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                          title: Text('Plastic Recycling Rating: 3.2 / 5 ⭐')),
                    ],
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://www.cityofrehoboth.com/sites/default/files/recyclingtypes_870x330_85184659.jpg',
                            height: 100,
                            fit: BoxFit.fill),
                      ),
                      ListTile(title: Text('paper Recycling Rating: 5 / 5 ⭐')),
                    ],
                  ),
                ),
              )),
          Container(
              margin: EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.network(
                            'https://www.prattvilleal.gov/images/recyclingrollout.jpg',
                            height: 100,
                            fit: BoxFit.fill),
                      ),
                      ListTile(
                          title: Text('glass Recycling Rating: 4.6 / 5 ⭐')),
                    ],
                  ),
                ),
              )),
          new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LeaderPage()),
                );
              },
              child: Container(
                margin: EdgeInsets.only(top: 5),
                width: 380,
                height: 80,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xff689f38), Color(0xff689f38)],
                    ),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text(
                      "Leaderboard ➡️",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'CentraleSansRegular'),
                    ),
                  ],
                ),
              )),
        ]));
  }
}
