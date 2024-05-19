
import 'package:flutter/material.dart';

class selecthost extends StatefulWidget {
  const selecthost({super.key});

  @override
  State<selecthost> createState() => _selecthostState();
}

class _selecthostState extends State<selecthost> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(

        height: 60,
        width: 200,
        decoration: BoxDecoration(
         // color: Colors.black,
        ),
        child: Row(
          children: [
            Container(
              height: 60,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Center(
                child: Text("CANCEL",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
              ),
            ),
            Expanded(
              child: Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.green,
                ),
                child: Center(
                  child: Text("REPRINT",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
                ),
              ),
            ),
          ],
        ),
      ),
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

      body: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
        child: Column(
          children: [
            Row(
              children: [
                Text("Select Host",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),

      SizedBox(height: 15,),
      Row(
        children: [

          Text("Select All",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal),),

         Checkbox(

           activeColor: Colors.green,
           checkColor: Colors.white,

           shape:CircleBorder(),
           value: true,
             onChanged: (value){

             },

         ),
          Text("(All Host Selected)",style: TextStyle(color: Colors.black54,fontSize: 17,fontWeight: FontWeight.normal),),

        ],
      ),
            customcontainer(text: 'CIMB'),
            SizedBox(height: 13,),
            customcontainer(text: 'AMEX'),
            SizedBox(height: 13,),
            customcontainer(text: 'CIMBMYDEBIT'),
            SizedBox(height: 13,),
            customcontainer(text: 'UnionPay'),
            SizedBox(height: 13,),
            customcontainer(text: 'IPP 6MONTH'),
            SizedBox(height: 13,),
            customcontainer(text: 'IPP 12MONTH'),
            SizedBox(height: 13,),
            customcontainer(text: 'Loyalty'),
            SizedBox(height: 13,),


          ],
        ),
      ),
    );
  }

}

class customcontainer extends StatelessWidget {
  const customcontainer({super.key,required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 45,
      width: 350,
      decoration: BoxDecoration(
        //color: Colors.black54,
          shape: BoxShape.rectangle,
          border: Border.all(color: Colors.black54,)
      ),
      child: Row(
        children: [
          Checkbox(
            value: true,
            activeColor: Colors.green,
            checkColor: Colors.white,
            onChanged: (value){
            },),
          SizedBox(width: 15,),
          Text(text,style: TextStyle(color: Colors.black,fontSize: 23),)
        ],
      ),
    );
  }
}

