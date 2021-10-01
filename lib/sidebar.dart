import 'package:flutter/material.dart';




class NavBar extends StatelessWidget {
  @override

  Widget build(BuildContext context) {

    var query = MediaQuery.of(context);
    var height = query.size.height;
    var width =  query.size.width;


    return Drawer(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.white,
      //   shadowColor: Colors.transparent,
      //   // title: Text("Change Drawer Background Color"),
      // ),
      // drawerEdgeDragWidth: 1000,

            // color: Colors.blue[300],
        child: Container(
             color: Color.fromRGBO(100, 200, 205, 1),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text(''),
                  accountEmail: Text(''),
                  currentAccountPicture: CircleAvatar(
                    child: ClipOval(
                      child: Image.asset(
                        'assets/logo.png',
                        fit: BoxFit.cover,
                        width: 90,
                        height: 90,
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image:  AssetImage(
                            'assets/logo.png')),
                  ),

                ),



                ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Colors.white,
                    size: 25,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white,
                    fontSize: 23,
                    fontWeight:FontWeight.bold,

                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.insert_invitation, color: Colors.white,size: 25,),
                  title: Text(
                    'Features',
                    style: TextStyle(
                      color: Colors.white,
                    fontSize: 23,
                    fontWeight:FontWeight.bold,

                  ),
                ),
                ),
                ListTile(
                  leading: Icon(Icons.help_outline, color: Colors.white,size: 25,),
                  title: Text('Support',style: TextStyle(color: Colors.white,
                    fontSize: 23,
                    fontWeight:FontWeight.bold,


                  ),),
                ),

                 ListTile(
                  leading: Icon(Icons.insert_comment, color: Colors.white,size: 25,),
                  title: Text('Blog',style: TextStyle(color: Colors.white,
                    fontSize: 23,
                    fontWeight:FontWeight.bold,


                  ),),
                ),


                Divider(

                  thickness: 0.5,
                  color: Colors.white,
                ),

                ListTile(
                  leading: Icon(Icons.person, color: Colors.white,size: 25,),
                  title: Text('about',style: TextStyle(color: Colors.white,
                    fontSize: 23,
                    fontWeight:FontWeight.bold,


                  ),),
                ),


                ListTile(
                  leading: Icon(Icons.file_download, color: Colors.white,size: 25,),
                  title: Text('Download',style: TextStyle(color: Colors.white,
                    fontSize: 23,
                    fontWeight:FontWeight.bold,


                  ),),
                ),
                ListTile(
                  leading: Icon(Icons.event_note, color: Colors.white,size: 25,),
                  title: Text('Learn',style: TextStyle(color: Colors.white,
                    fontSize: 23,
                    fontWeight:FontWeight.bold,


                  ),),
                ),

              ],
            ),
        ),

    );
  }
}