import 'package:flutter/material.dart';

class SelectHostPage extends StatefulWidget {
  @override
  _SelectHostPageState createState() => _SelectHostPageState();
}

class _SelectHostPageState extends State<SelectHostPage> {
  final List<String> hosts = [
    'CIMB',
    'AMEX',
    'MYDEBIT',
    'UnionPay',
    'IPP 6MONTH',
    'IPP 12MONTH',
    'Loyalty',
    'CIMBARD',
  ];

  final Map<String, bool> selectedHosts = {};

  @override
  void initState() {
    super.initState();
    for (var host in hosts) {
      selectedHosts[host] = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text('Reprint',style: TextStyle(color: Colors.white),),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Host',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: hosts.map((host) {
                return CheckboxListTile(
                  title: Text(host),
                  value: selectedHosts[host],
                  onChanged: (bool? value) {
                    setState(() {
                      selectedHosts[host] = value!;
                    });
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Background color
              ),
              onPressed: () {
                // Handle cancel action
              },
              child: Text('CANCEL'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
              ),
              onPressed: () {
                // Handle reprint action
              },
              child: Text('REPRINT'),
            ),
          ],
        ),
      ),
    );
  }
}
