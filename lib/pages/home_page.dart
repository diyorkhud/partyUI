import 'package:flutter/material.dart';
import 'package:pdpui6/animation/FadeAnimation.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLogin = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/party.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 50,),
              FadeAnimation(1, Text("Find the best parties near you.", style: TextStyle(color: Colors.yellowAccent, fontSize: 40, fontWeight: FontWeight.bold),)),
              SizedBox(height: 15,),
              FadeAnimation(1.2, Text("Let's find a party for your interest.", style: TextStyle(color: Colors.greenAccent, fontSize: 25, fontWeight: FontWeight.w300),)),

              SizedBox(height: 470,),

               _isLogin?
                   FadeAnimation(1.4, Container(
                     height: 55,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(50),
                       color: Colors.yellow[900],
                     ),
                     child: Center(
                       child: Text('Start', style: TextStyle(color: Colors.white, fontSize: 18),),
                     ),
                   ))
              :
                   FadeAnimation(1.5,
                     Row(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [

                         Container(
                           height: 55,
                           width: 150,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: Colors.red,
                           ),
                           child: Center(
                             child: Text('Google+', style: TextStyle(color: Colors.white, fontSize: 18),),
                           ),
                         ),
                         SizedBox(width: 10,),
                         Container(
                           height: 55,
                           width: 150,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(50),
                             color: Colors.blue,
                           ),
                           child: Center(
                             child: Text('Facebook', style: TextStyle(color: Colors.white, fontSize: 18),),
                           ),
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
}
