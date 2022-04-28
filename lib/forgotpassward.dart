import 'package:flutter/material.dart';
import 'package:login/resetpassward.dart';
import 'package:login/verfication.dart';

class forgotpassward extends StatefulWidget {
  const forgotpassward({ Key? key }) : super(key: key);

  @override
  State<forgotpassward> createState() => _forgotpasswardState();
}

class _forgotpasswardState extends State<forgotpassward> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         centerTitle: true,
    title: Text("Fogot Passward"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
         colors: <Color>[Color.fromARGB(226, 42, 123, 189), Colors.blue])),
    ),
        leading: IconButton(
             icon: Icon(Icons.arrow_back, color: Color.fromARGB(209, 255, 249, 249)),
               onPressed: () => Navigator.of(context).pop(),
               
               
              ),
      ),
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
              Text(
                'Forgot Password?',
                style: TextStyle(fontSize: 26, color: Color.fromARGB(255, 43, 75, 129),
                fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 25,),


          Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text
                  ('Enter your Email Address or username\n           linked to your account',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 14, color: Colors.black,
                ),
              ),
                ],
              ),

        
         Padding(
           padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
           child: TextFormField(
                      style: TextStyle(color: Color.fromARGB(255, 12, 11, 11)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        ),  
                        hintText: 'Send an Email',
                        icon: Icon(
                          Icons.mail,
                          color: Color.fromARGB(255, 14, 13, 13),
                        ),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                        hintStyle: TextStyle(color: Color.fromARGB(255, 12, 12, 12)),
                      ),
                    ),
         ),

         
         
         Padding(
           padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
           child: TextFormField(
                      style: TextStyle(color: Color.fromARGB(255, 12, 11, 11)),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                        ),
                        hintText: 'Send an SMS Message',
                        icon: Icon(
                          Icons.phone_android,
                          color: Color.fromARGB(255, 14, 13, 13),
                        ),
                        labelStyle: TextStyle(color: Color.fromARGB(255, 15, 15, 15)),
                        hintStyle: TextStyle(color: Color.fromARGB(255, 12, 12, 12)),
                      ),
                    ),
         ),
         

         Padding(
           padding: const EdgeInsets.fromLTRB(30, 10, 20, 0),
           child: Row(
              mainAxisAlignment:MainAxisAlignment.end,
              children: [
             TextButton(
               child: FlatButton( 
                 onPressed: (){},
                  child: Text('Need more help?',
               ),
               textColor: Colors.grey,
               ),
              onPressed: () {},
            
             ),
       ],
     ),
         ),

         
         SizedBox(height: 30,),

         GestureDetector(
          child: Container(
            height: 40,
            width: 250,
            child: RaisedButton(onPressed: (){
               var push = Navigator.push(
             context, 
             MaterialPageRoute(builder: (context) => const verification()),
            );   
            },
            child: Text('Send',
            style: TextStyle(fontWeight: FontWeight.bold), 

             ),
            color: Color.fromARGB(255, 60, 155, 199),
            textColor: Colors.white,
            onLongPress: (){
 
            },
            ),
          ),
        ),

         SizedBox(height: 10,),


           
       ],
     ),
      
    );
  }
}