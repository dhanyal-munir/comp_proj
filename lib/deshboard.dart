
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haseeb/reprint.dart';

import 'SecondPage.dart';
class CIMBHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance, size: 24,color: Colors.red,), // Bank icon
            SizedBox(width: 8), // Spacing between icon and title
            Text(
              'CIMB BANK',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: Container(
      //   color: Colors.red,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     children: [
      //       Text(
      //         'PayHereDirect CIMB 01.06.22',
      //         style: TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
      //       ),
      //       IconButton(
      //         icon: Icon(Icons.settings),
      //         onPressed: () {
      //           // Handle settings tap
      //         },
      //       ),
      //     ],
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 200,
                width: 350,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  //color: Colors.red,
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image(
                      image: AssetImage("images/picture.png"),
                      fit: BoxFit.fill,
                    ),
                    Positioned(
                      bottom: -20,
                      left: 130,
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            Icon(Icons.hail,color: Colors.white,size: 23,),
                            Text("SALE",style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),

                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0,left: 15,right: 15),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200], // light gray background color
                    borderRadius:
                    BorderRadius.circular(10.0), // border radius
                  ),
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        'Main transactions',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16.0), // space between text and grid
                      GridView.count(
                        crossAxisCount: 3,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        mainAxisSpacing: 10.0,
                        crossAxisSpacing: 10.0,
                        children: [
                          TransactionOption(
                            color: Colors.red.withOpacity(.5),
                            title: 'Void',
                            iconData: Icons.cancel,
                            onTap: () {
                              // Handle Void tap
                            },
                          ),
                          TransactionOption(
                            color: Colors.brown,
                            title: 'Pre-Auth',
                            iconData: Icons.lock_open,
                            onTap: () {
                              // Handle Pre-Auth tap
                            },
                          ),
                          TransactionOption(
                            color: Colors.blue,
                            title: 'Refund',
                            iconData: Icons.refresh,
                            onTap: () {
                              // Handle Refund tap
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 8.0),
                child: GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  children: [
                    TransactionOption(
                      title: 'Reprint',
                      color: Colors.greenAccent,
                      iconData: Icons.print,
                      onTap: () {
                        // Handle Reprint tap
                      },
                    ),
                    TransactionOption(
                      title: 'Report',
                      color: Colors.orangeAccent,
                      iconData: Icons.report,
                      onTap: () {
                        // Handle Report tap
                      },
                    ),
                    TransactionOption(
                      title: 'Settlement',
                      color: Colors.brown,
                      iconData: Icons.account_balance,
                      onTap: () {
                        // Handle Settlement tap
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                        child: Text('More >',

                        ),
                    onTap: (){
                          Get.to(DownloadPage());
                    },),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

class TransactionOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  final VoidCallback onTap;
  final Color color;

  TransactionOption(
      {required this.title,required this.color, required this.iconData, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            iconData,
            size: 50.0,
            color: color,
          ),
          Text(title),
        ],
      ),
    );
  }
}
