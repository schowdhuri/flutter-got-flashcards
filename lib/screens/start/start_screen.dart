import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.white38.withOpacity(0.25),
                  blurRadius: 16,
                  offset: Offset(-4, -4),
                ),
                BoxShadow(
                  color: Theme.of(context).primaryColor,
                  blurRadius: 8,
                ),
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 16,
                  offset: Offset(8, 8),
                ),
              ],
              color: Theme.of(context).primaryColor,
            ),
            margin: EdgeInsets.symmetric(horizontal: 32),
            child: FlatButton(
              onPressed: () {
                Navigator.pushNamed(context, "/cards");
              },
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 32,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                "START",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
