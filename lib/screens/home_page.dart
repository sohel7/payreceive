import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button press
          },
        ),
        title: Text('Mining',style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            icon: Icon(Icons.help_outline),
            onPressed: () {
              // Handle help button press
            },
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFEBF5FC),
              Color(0xFFB2E0FA),
              Color(0xFF7FC8F8),
              Color(0xFF56B7F5),
              Color(0xFF419FF2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Total Koco  :  1000',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 200,
                    height: 200,
                    child: CircularProgressIndicator(
                      value: 0.4, // Progress value (0.0 to 1.0)
                      strokeWidth: 15,
                      backgroundColor: Colors.white,
                      color: Colors.blueAccent,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '1000.252144',
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '+5.4/day',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        '00/00',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '24:30:32',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 40),
              ElevatedButton.icon(
                onPressed: () {
                  // Handle invite friends button press
                },
                icon: Icon(Icons.group),
                label: Text('Start inviting friends and  get 20% koco bonuses'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.blueAccent,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                    side: BorderSide(color: Colors.blueAccent),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Handle start mining button press
                },
                child: Text('Start Mining'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
