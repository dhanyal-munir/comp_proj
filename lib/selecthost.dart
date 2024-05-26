import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Ensure you have the lottie package added

class selecthost extends StatefulWidget {
  const selecthost({super.key});

  @override
  State<selecthost> createState() => _selecthostState();
}

class _selecthostState extends State<selecthost> {
  bool isPrinting = false; // Add this variable to manage printing state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 60,
        width: 200,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Center(
                child: Text(
                  "CANCEL",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 21,
                  ),
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isPrinting = true; // Toggle the printing state
                  });

                  // Simulate printing delay
                  Future.delayed(Duration(seconds: 5), () {
                    setState(() {
                      isPrinting = false; // Reset the printing state after delay
                    });
                  });
                },
                child: Container(
                  height: 60,
                  width: 200,
                  decoration: BoxDecoration(
                    color: Colors.green,
                  ),
                  child: Center(
                    child: Text(
                      "REPRINT",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(
          'Reprint',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Stack(
        children: [
          AnimatedOpacity(
            opacity: isPrinting ? 0.3 : 1.0,
            duration: Duration(milliseconds: 500),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          "Select Host",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Text(
                          "Select All",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Checkbox(
                          activeColor: Colors.green,
                          checkColor: Colors.white,
                          shape: CircleBorder(),
                          value: true,
                          onChanged: (value) {},
                        ),
                        Text(
                          "(All Host Selected)",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                    customContainer(text: 'CIMB'),
                    SizedBox(height: 13),
                    customContainer(text: 'AMEX'),
                    SizedBox(height: 13),
                    customContainer(text: 'CIMBMYDEBIT'),
                    SizedBox(height: 13),
                    customContainer(text: 'UnionPay'),
                    SizedBox(height: 13),
                    customContainer(text: 'IPP 6MONTH'),
                    SizedBox(height: 13),
                    customContainer(text: 'IPP 12MONTH'),
                    SizedBox(height: 13),
                    customContainer(text: 'Loyalty'),
                    SizedBox(height: 13),
                  ],
                ),
              ),
            ),
          ),
          if (isPrinting)
            Center(
              child: Container(
                height: 250,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      child: Center(
                        child: Lottie.asset("lottie/print.json"),
                      ),
                    ),
                    Text(
                      "Printing...",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class customContainer extends StatelessWidget {
  const customContainer({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.black54),
      ),
      child: Row(
        children: [
          Checkbox(
            value: true,
            activeColor: Colors.green,
            checkColor: Colors.white,
            onChanged: (value) {},
          ),
          SizedBox(width: 15),
          Text(
            text,
            style: TextStyle(color: Colors.black, fontSize: 23),
          ),
        ],
      ),
    );
  }
}
