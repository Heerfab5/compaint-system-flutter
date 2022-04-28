import 'package:flutter/material.dart';
import 'package:login/drawer.dart';
import 'package:login/forgotpassward.dart';
import 'package:login/signupscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData( 
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: login(),
    );
  }
}

class login extends StatefulWidget {
  const login({ Key? key }) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
   TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  void initState() {
    username.text = ""; //innitail value of text field
    password.text = "";
    super.initState();
  }
  @override
  Widget build(BuildContext context) { 
   return Scaffold(
//backgroundColor: Image.asset("assets/backgr.jpg"),
       appBar: AppBar(
        centerTitle: true,
    title: Text("Complaint Management System"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        colors: <Color>[Color.fromARGB(226, 42, 123, 189), Colors.blue])),
      ),
    ),
       
        body:Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/backgr.jpg"),
          fit: BoxFit.cover,
          ),
          ),
        
          child: Padding(
     padding: const EdgeInsets.fromLTRB(40, 55, 30, 0),
     child:  Column(mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.center,
  children : [SizedBox(width: 10,),
            // Image.asset("assets/SodaPDF-converted-backgr.png"),
            CircleAvatar(
              radius: 70.0,
                backgroundImage: 
                AssetImage('assets/logoforAPPFinal.PNG' ),
                
                 ),

 Padding(
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
                  controller: username,
                  decoration: InputDecoration( 
                      labelText: "Username/Email",
                      prefixIcon: Icon(Icons.people),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:20),

                TextField( 
                  controller: password,
                  decoration: InputDecoration( 
                      prefixIcon: Icon(Icons.lock),
                      labelText: "Password",
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                    SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  
                  TextButton(

                     child: FlatButton(onPressed: (){
                       var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const forgotpassward()),
  );
                     }, child: Text(" Forgot Password",
                     
                    style: TextStyle(fontWeight: FontWeight.bold,), 
                    ),
                textColor: Color.fromARGB(255, 241, 18, 18),
                    ),
                    onPressed: () {

                      var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const login()),
  );
                      //signup screen
                    },)
                ],
                mainAxisAlignment: MainAxisAlignment.end,
              ),

SizedBox(height: 10,),
                   GestureDetector(
                     child: Container(
                       height: 60,
                       width: 160,
                         padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                       
                          child:
                          
                           RaisedButton(child: Text("Login"),
                           
                           
                           
                          
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

   
    SizedBox(height: 10,),
              Row(
                children: <Widget>[
                  const Text('Dont`t have an account?'),
                  TextButton(
                     child: FlatButton(onPressed: (){
                       Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const signup()),
  );
                     }, child: Text("Register",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,),
                     
                    ),
                textColor: Color.fromARGB(255, 88, 168, 112),
                    ),
                    onPressed: () {
                      var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const login()),
  );
 
                      //signup screen
                    },)
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
   




            ],
       ),
       ),

          
            
  ],
     ),
          ),
        ),  
    );
  }

 OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Color.fromARGB(255, 66, 160, 189),
          width: 3,
        )
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Color.fromARGB(255, 64, 166, 184),
          width: 3,
        )
    );
  }

  //create a function like this so that you can use it wherever you want
}