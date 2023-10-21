import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    title: "contoh flutter",
    home: Page1(),
  ));
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF294250),
        title: Text('Page_Flutter1'),
      ),
      backgroundColor: Color(0xFF182730),
      body: Center(
        child: Container(
          width: 400,
          height: 300,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF1E8296), Color(0xFF5A2396)],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Hello, Flutter!',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.purpleAccent,
                ),
              ),
              Text(
                'Saya Dimas Putra Ardana',
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.purpleAccent,
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/logo1.png',
                    width: 50,
                    height: 50,
                  ),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Page2()));
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text('Kehalaman 2'),
                    Icon(Icons.arrow_forward),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    FontAwesomeIcons.instagram,
                    size: 40,
                    color: Colors.purpleAccent,
                  ),
                  SizedBox(width: 20),
                  Icon(
                    FontAwesomeIcons.github,
                    size: 40,
                    color: Colors.purpleAccent,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              'https://frm-wows-eu.wgcdn.co/wows_forum_eu/monthly_2019_06/404-error-not-found.png.4c2260071992178aa7868830f2386748.png',
              width: 100,
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF294250),
        title: Text('Page_Flutter2'),
      ),
      backgroundColor: Color(0xFF294250),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Text(
              'Latihan Column',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Center(
                      child: Text("Biru"),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Center(
                      child: Text("Hijau"),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Center(
                      child: Text("Merah"),
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                        child: Center(
                          child: Text("Kuning"),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.purple,
                        child: Center(
                          child: Text("Ungu"),
                        ),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.purpleAccent,
                        child: Center(
                          child: Text("Purple Accent"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 15),
                  Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.deepOrange,
                        child: Text("Deep Orange"),
                      ),
                      Container(
                        width: 75,
                        height: 75,
                        color: Colors.orange,
                        child: Text("Orange"),
                      ),
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.orangeAccent,
                        child: Text("Orange Accent"),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.arrow_back),
                Text('Kembali Kehalaman 1'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Page3()));
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('KeHalaman 3'),
                Icon(Icons.arrow_forward),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF294250),
        title: Text('Page_Flutter3'),
      ),
      backgroundColor: Color(0xFF294250),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.blue,
            child: Text(
              'Latihan List View',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(height: 10), // Jarak antara ElevatedButton dan ListView
          // ListView horizontal
          Expanded(
            child: SizedBox(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 100,
                    margin: EdgeInsets.all(5),
                    color: Colors.deepPurpleAccent,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 15),

          // ListView vertical
          Expanded(
            child: SizedBox(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    margin: EdgeInsets.all(5),
                    color: Colors.purpleAccent,
                    child: Center(
                      child: Text(
                        'Item $index',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

          SizedBox(height: 15),
          // GridView
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
              ),
              itemCount: 8,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.orange,
                  child: Center(
                    child: Text('Grid Item $index'),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.arrow_back), // Menambahkan ikon panah kembali
                Text('Kembali ke Halaman 1'),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(Icons.arrow_back), // Menambahkan ikon panah kembali
                Text('Kembali ke Halaman 2'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
