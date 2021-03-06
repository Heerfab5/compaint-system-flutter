import 'package:flutter/material.dart';
import 'package:login/drawer.dart';

class personalinfo extends StatefulWidget {
  const personalinfo({ Key? key }) : super(key: key);

  @override
  State<personalinfo> createState() => _personalinfoState();
}

class _personalinfoState extends State<personalinfo> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
         appBar: AppBar(
             leading: IconButton(
             icon: Icon(Icons.arrow_back, color: Color.fromARGB(209, 255, 250, 250)),
               onPressed: () => Navigator.of(context).pop(),
               
              ),
        centerTitle: true,
    title: Text("Personal Information"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
                  colors: <Color>[Color.fromARGB(226, 42, 123, 189), Colors.blue])),
    ),
       ),

        body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
              child: Row(    
                mainAxisAlignment: MainAxisAlignment.start,
           children: [
                 
                
               ],
              ),
            ),  
            TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "First Name",
                 hintText: "Enter Your First Name",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),  
               TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "Last Name",
                 hintText: "Enter Your Last Name",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ), 
             
               TextField(
                 
                style:
                TextStyle(color: Colors.black),
                decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Email",
                 hintText: "Enter Your Email",
                 
                 ),
               ),
                 Padding(
            
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ), 
               TextField(
                style: 
                 TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                 decoration: InputDecoration(
                   
                      border: OutlineInputBorder(),
                      labelText: "Phone Number",
                 hintText: "Enter Your Phone Number",
                      ),
                ),
                 Padding(
                padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
                child: Row(
                
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                  
                 ],
                 ),
              ),     
               TextField(obscureText: true,
                style:
                TextStyle(color: Colors.black),
                decoration: InputDecoration(
                 border: OutlineInputBorder(),
                 labelText: "Gender",
                 hintText: "Enter Your Gender",
                 ),
               ),
                GestureDetector(
                   child: Container(
                     height: 60,
                     width: 300,
                       padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
                     
                        child:
                        
                         RaisedButton(child: Text("Save"),
                         
                         
                         
                        
                        color: Color.fromARGB(255, 49, 149, 216),
                       textColor: Color.fromARGB(255, 231, 231, 224),
                       splashColor: Color.fromARGB(255, 109, 149, 187),
                       onLongPress: (){},
                        onPressed: (
                  ){
                          var push = Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const drawer()),
                   );
                 
                   
                        },                    ),
                     ),
                 ),
               
                 ], ),
                 




        ),
      
    
    );
  }
}







   