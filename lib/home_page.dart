import 'package:flutter/material.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                // Handle button 1 press
               Navigator.pushNamed(context, "/createlive");
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Background color
                onPrimary: Colors.white, // Text color
                textStyle: TextStyle(
                  fontSize: 20.0, // Text size
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0, // Horizontal padding
                  vertical: 20.0, // Vertical padding
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Button border radius
                ),
              ),
              child: Text('Start live'),
            ),
            SizedBox(height: 20),
            OutlinedButton(


              onPressed: () {
                // Handle button 2 press
            Navigator.pushNamed(context,   "/watchlive");
              },
              style: OutlinedButton.styleFrom(
                primary: Colors.red, // Border color
                side: BorderSide(color: Colors.red), // Border side color
                textStyle: TextStyle(
                  fontSize: 20.0, // Text size
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 40.0, // Horizontal padding
                  vertical: 20.0, // Vertical padding
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0), // Button border radius
                ),
              ),
              child: Text('Watch Live'),
            ),
          ],
        ),
      ),
    );
  }
}
