import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Sale'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            color: Colors.grey[200], // Light gray color
            padding: EdgeInsets.all(16.0),
            child: Column(
            children: <Widget>[
                Text(
                  "Enter Amount",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'MYR',
                          border: OutlineInputBorder(),
                        ),
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 24),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: 12,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              ),
              itemBuilder: (BuildContext context, int index) {
                if (index == 9) {
                  return _buildGridButton('Clear');
                } else if (index == 10) {
                  return _buildGridButton('0');
                } else if (index == 11) {
                  return _buildGridButton('X', Icons.close);
                } else {
                  return _buildGridButton('${index + 1}');
                }
              },
            ),
          ),
         
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildBottomButton('Show QR', Icons.qr_code, Colors.blue),
                _buildBottomButton('QR', Icons.qr_code_scanner, Colors.green),
                _buildBottomButton('Card', Icons.credit_card, Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton(String label, IconData icon, Color color) {
    return TextButton.icon(
      style: ButtonStyle(
        minimumSize: MaterialStateProperty.all(Size(120, 50)), // Reduced button size
        padding: MaterialStateProperty.all(EdgeInsets.all(20)), // Adjust padding
        backgroundColor: MaterialStateProperty.all(color), // Set background color
      ),
      icon: Icon(icon, size: 30), // Reduced icon size
      label: Text(label, style: TextStyle(fontSize: 16)),
      onPressed: () {},
    );
  }

  Widget _buildGridButton(String label, [IconData? icon]) {
    bool isXButton = label == 'X';
    return Container(
      margin: EdgeInsets.all(15.0), // Add margin to reduce size and add spacing
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey), // Add border
        color: isXButton ? Colors.yellow : Colors.white, // Yellow for 'X', white for others
      ),
      child: icon != null
          ? Center(
              child: Icon(
                icon,
                color: Colors.black, // Set icon color to black
                size: 24,
              ),
            )
          : TextButton(
              child: Text(label, style: TextStyle(fontSize: 20, color: Colors.black)), // Reduced text size
              onPressed: () {},
            ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: SecondPage(),
  ));
}

