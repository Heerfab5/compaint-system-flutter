import 'package:flutter/material.dart';

class inprogress_complaint extends StatelessWidget {
  const inprogress_complaint({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(

       appBar: AppBar(
        centerTitle: true,
    title: Text("Inprogress_Complaint"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        colors: <Color>[Color.fromARGB(226, 42, 123, 189), Colors.blue])),
    ),
       ),
       
        body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 25, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [  Text('Still there is no record'),
          ]
        ),
        ),
    );
  }
}