import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'dart:math';
import 'package:animated_splash_screen/animated_splash_screen.dart';

import 'package:flutter/services.dart';

void main() async
{
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
  //
  //   statusBarColor: Colors.black,
  //
  // )
  // );


  runApp(MaterialApp(

    home: AnimatedSplashScreen(
      splash: Image.asset(
        'assets/logo.png',

      ),
      splashIconSize: 200,
      nextScreen: Main(),
       splashTransition: SplashTransition.fadeTransition,
      duration: 3000,
    ),

  ));

}

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);


  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  @override

  double value = 0;

  Widget build(BuildContext context) {

    var query = MediaQuery.of(context);
    var height = query.size.height;
    var width =  query.size.width;

    return Scaffold(

      drawer: NavBar(),
      drawerEdgeDragWidth: 1000,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(100, 200, 205, 1),
        foregroundColor: Color.fromRGBO(100, 200, 205, 1),
        shadowColor: Colors.transparent,
        centerTitle: true,


        leading: Builder(

          builder: (context) => IconButton(
            icon: new Icon(
              Icons.menu,
              color: Colors.white,
              size: 30,

            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),



      body: SingleChildScrollView(

        child : Stack(
          children: <Widget>[


            TweenAnimationBuilder(
                tween: Tween<double>(begin: 0 , end: value),
                duration: Duration(microseconds: 5),
                curve: Curves.easeInCubic,
                builder: (_,double val, __)
                {
                  return(Transform(

                      transform: Matrix4.identity()
                        ..setEntry(3,2,0.001)
                        ..setEntry(3,2,0.400 * val)
                        ..rotateY((pi/6) * val)

                  )
                  );
                }

            ),



                Container(
                  // margin: EdgeInsets.fromLTRB(50, 50, 50, 200),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  color: Colors.white,


                ),

            Column(
              children: [

            Container(
              // margin: EdgeInsets.fromLTRB(50, 50, 50, 200),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3,
              color: Color.fromRGBO(100, 200, 205, 1),

             ),
              ],
            ),

            Container(
              margin: EdgeInsets.fromLTRB(200, 50,0, 0),
              // alignment: Alignment.topRight,
              // transformAlignment: Alignment.topRight,
              width: MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/4,
              decoration: BoxDecoration(

                image: const DecorationImage(
                  image:AssetImage('assets/pic1.png'),
                  fit: BoxFit.cover,
                ),

              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(10, 0,0, 0),
              child: ClipOval(
                child: Image.asset(
                  'assets/logo.png',
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width/9,
                  height: MediaQuery.of(context).size.height/14,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(60, 8,0, 0),
              child: Text(
                'MultiNode',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'italic',
                  fontSize: 28.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(4, 65,0, 0),
              child: Text(
                'What"s in your mind?',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'italic',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(4, 100,0, 0),
              child: Text(
                'Every great idea starts with\n a single thought. Which leads\n to an other and another And\n then a million more. MinNode\n helps you to catch your thought\n and turn them into clear picture\n of your idea.',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'italic',
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),








          ]
        )
      ),




    );
  }
}
