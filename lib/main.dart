import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homescreen(),
      
    );
  }
}
class Homescreen extends StatefulWidget {
  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            ClipPath(
              child: Container(height: 300,width: MediaQuery.of(context).size.width,color: Colors.orange[900],),clipper: Myclipper(),
            ),
            Positioned(top: 100,left: 65,
              child: Column(children: [
              Text('Sign In to Marketplace',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 10,),
               Text('Food Overproduction management',style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,color: Colors.white),)

            ],))
          ],
        ),
        SizedBox(height: 50,),
        Container(height: 60,width: 280,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), ),
         ],
         color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
         children:[   Icon(Icons.ac_unit,color: Colors.lightGreenAccent[400],size: 20,),SizedBox(width: 10,),
             Text('Sign Up as a provider',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
 
 ],),
          ),
      ),SizedBox(height: 25,),
       Container(height: 60,width: 280,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), ),
         ],
         color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
         children:[   Icon(Icons.album,color: Colors.lightGreenAccent[400],size: 20,),SizedBox(width: 10,),
             Text('Sign Up as a consumer',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
 
 ],),
          ),
      ),SizedBox(height: 25,),
       Container(height: 60,width: 280,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.5),
        spreadRadius: 5,
        blurRadius: 7,
        offset: Offset(0, 3), ),
         ],
         color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
         children:[   Icon(Icons.album,color: Colors.lightGreenAccent[400],size: 20,),SizedBox(width: 10,),
             Text('Already have an account',style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,color: Colors.black),),
 
 ],),
          ),
      ),SizedBox(height: 25,),
      ],  
      ),
       );
      
    
  }
}
class Myclipper extends CustomClipper <Path>{
  @override
  Path getClip(Size size) {
    var path=new Path();
    path.lineTo(0.0, size.height/2+60);
    
    var firstControlPoint = new Offset(size.width / 4, size.height / 3+250);
    var firstEndPoint = new Offset(size.width / 2-5, size.height / 3+140 );
   
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);



    var secondControlPoint =
        new Offset(size.width /2+30, size.height / 4 +130);
    var secondEndPoint = new Offset(size.width/2+80, size.height / 3+130);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

        

    var thirdControlPoint = new Offset(size.width -40, size.height / 3+180);
    var thirstEndPoint = new Offset(size.width , size.height / 4+100);
   
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirstEndPoint.dx, thirstEndPoint.dy);


      

      
      path.lineTo(size.width, size.height / 2+30);
    path.lineTo(size.width, 0);
 
    path.close();
    return path;
    }
  
  

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)=>false;
   
  }
