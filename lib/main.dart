import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ninjacard(),
  ));
}

class ninjacard extends StatefulWidget {
  @override
  _ninjacardState createState() => _ninjacardState();
}

class _ninjacardState extends State<ninjacard> {
  int ninjalevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjalevel += 1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("ninja id card"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://www.woolha.com/media/2020/03/eevee.png'),
                backgroundColor: Colors.transparent,
                radius: 35,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[800],
            ),
            Text(
              "NAME",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Darshan Nere",
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Text(
              "Current ninja level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2,
              ),
            ),
            SizedBox(height: 10),
            Text(
              '$ninjalevel',
              style: TextStyle(
                color: Colors.amber[200],
                letterSpacing: 2,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "darshan.nere@gmail.com",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                    letterSpacing: 1,
                  ),
                ),
              ],
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    ninjalevel = 0;
                  });
                },
                child: Text(
                  "Reset level",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                ))
          ],
        ),
      ),
    );
  }
}
