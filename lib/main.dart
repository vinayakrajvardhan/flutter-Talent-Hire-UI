import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FlutterLogo(
          size: 25.0,
        ),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: Colors.grey,
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
            color: Colors.grey,
          )
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                color: Colors.white,
                height: 100.0,
                child: Center(
                  child: Text(
                    'Get Coaching',
                    style: TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Montserrat'),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    left: 25.0, top: 90.0, right: 25.0, bottom: 0.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2.0,
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.only(
                            left: 25.0,
                            top: 10.0,
                            right: 5.0,
                            bottom: 5.0,
                          ),
                          child: Text(
                            'YOU HAVE',
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(
                            left: 25.0,
                            top: 40.0,
                            right: 5.0,
                            bottom: 20.0,
                          ),
                          child: Text(
                            '206',
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Quicksand',
                              fontWeight: FontWeight.w600,
                              fontSize: 40.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Container(
                      height: 60,
                      width: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.green[100].withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Text(
                          'BUY MORE',
                          style: TextStyle(
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'MY COACHES',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                    fontSize: 12.0,
                  ),
                ),
                Text(
                  'VIEW PAST SESSIONS',
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quicksand',
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 2.0,
            shrinkWrap: true,
            primary: false,
            children: [
              _buildCard(
                'Face',
                'Available',
                1,
                Icon(
                  Icons.face,
                  size: 60.0,
                ),
              ),
              _buildCard(
                'Rowing',
                'Away',
                2,
                Icon(
                  Icons.rowing,
                  size: 60.0,
                ),
              ),
              _buildCard(
                'Touch App',
                'Away',
                3,
                Icon(Icons.touch_app, size: 60.0),
              ),
              _buildCard(
                'Redeem',
                'Available',
                4,
                Icon(
                  Icons.redeem,
                  size: 60.0,
                ),
              ),
              _buildCard(
                'Translate',
                'Away',
                5,
                Icon(Icons.translate, size: 60),
              ),
              _buildCard(
                'Tour',
                'Available',
                6,
                Icon(
                  Icons.tour,
                  size: 60.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _buildCard(String name, String status, int cardIndex, Widget icon) {
  return Card(
    elevation: 7.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    child: Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        Stack(
          children: [
            Container(
              height: 80.0,
              width: 80.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: IconButton(
                icon: icon,
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 60.0),
              height: 20.0,
              width: 20.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: status == 'Away' ? Colors.amber : Colors.green,
                border: Border.all(
                    color: Colors.white, style: BorderStyle.solid, width: 2.0),
              ),
            ),
          ],
        ),
        SizedBox(height: 8.0),
        Text(
          name,
          style: TextStyle(
            fontFamily: 'Quicksand',
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          status,
          style: TextStyle(
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
              color: Colors.grey),
        ),
        SizedBox(height: 5.0),
        Expanded(
          child: Container(
            width: 175.0,
            decoration: BoxDecoration(
              color: status == 'Away' ? Colors.amber : Colors.green,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
            ),
            child: Center(
              child: Text(
                'Request',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Quicksand',
                ),
              ),
            ),
          ),
        )
      ],
    ),
    margin: cardIndex.isEven
        ? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0)
        : EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0),
  );
}
