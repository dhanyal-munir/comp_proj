
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class printing extends StatelessWidget {
  const printing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Container(
          height: 250,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,

              borderRadius: BorderRadius.circular(10),
            ),
          child: Column(
            children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0,right: 10,top: 10),
              child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
               // color: Colors.blue.withOpacity(.3),
                //borderRadius: BorderRadius.circular(10),
              ),
                child: Center(
                  child: Lottie.asset("lottie/print.json"),
                ),
                ),
            ),
              Text("Printing...",style: TextStyle(color: Colors.black,fontSize: 20))
            ],
            
          ),
          
        ),
      ),
    );
  }
}
