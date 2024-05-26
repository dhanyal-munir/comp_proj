import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:haseeb/selecthost.dart';

import 'SelectHostPage.dart';

class DownloadPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.account_balance, size: 24, color: Colors.red), // Bank icon
            SizedBox(width: 8), // Spacing between icon and title
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'CIMB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                  TextSpan(
                    text: ' BANK',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Row(
                children: [
                  SizedBox(width: 10),
                  Icon(Icons.arrow_back_ios, size: 20),
                  Text("Back", style: TextStyle(color: Colors.black, fontSize: 20)),
                ],
              ),
            ),
            SizedBox(height: 10), // Add some spacing after the back button row
            GridView.count(
              crossAxisCount: 3,
              childAspectRatio: 1,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                _buildGridItem(Icons.shopping_cart, 'Offline Sale', context, null, Colors.purple),
                _buildGridItem(Icons.attach_money, 'Cash Advance', context, null, Colors.green),
                _buildGridItem(Icons.receipt, 'View Transactions', context, null, Colors.red),
                _buildGridItem(Icons.print, 'Print Detail', context, null, Colors.redAccent),
                _buildGridItem(Icons.print, 'Print A Transaction', context, null, Colors.blue),
                _buildGridItem(Icons.print, 'Reprint Settlement', context, selecthost(), Colors.green),
                _buildGridItem(Icons.qr_code, 'QR Inquiry', context, null, Colors.black),
                _buildGridItem(Icons.login, 'CUP Logon', context, null, Colors.blue),
                _buildGridItem(Icons.menu, 'CUP Auth Menu', context, null, Colors.green),
                _buildGridItem(Icons.payment, 'Installment', context, null, Colors.green),
                _buildGridItem(Icons.adjust, 'Adjust', context, null, Colors.blueAccent),
                _buildGridItem(Icons.login, 'Debit Logon', context, null, Colors.red),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGridItem(IconData icon, String label, BuildContext context, Widget? destination, Color iconcolor) {
    return GestureDetector(
      onTap: () {
        if (destination != null) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        }
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, size: 40.0, color: iconcolor),
          SizedBox(height: 10),
          Text(label, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
