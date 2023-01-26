import 'package:flutter/material.dart';

class Page47 extends StatefulWidget {
  const Page47({Key? key}) : super(key: key);

  @override
  State<Page47> createState() => _Page47State();
}

class _Page47State extends State<Page47> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF2F1267) ,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/notification/background.png"),
                fit: BoxFit.cover,
              ),
            ),
            //column for all

           child: Column(
              children: [
                SizedBox(height: 100,),
                // The top widgets(arrow and Notification texts)
                Row(
                  children: const [
                    SizedBox(width: 30,),
                    Icon(Icons.arrow_back,size: 40,color:Color(0xFFFFFFFF) ,),
                    SizedBox(width: 50,),
                    Text('Notifications',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 30,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold

                      ),)
                  ],
                ),

                SizedBox(
                  height: 250,
                ),
                //column for body elements
                Center(
                  child: Column(
                    children: [

                      //image
                      SizedBox(
                        width: 50,
                        height: 50,
                        child: Image(
                          image: AssetImage('assets/notification/bell.png',),
                        ),
                      ),

                      //first text
                      Text('No notifications yet',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 20,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold

                        ),),

                      //last text
                      Text('Your notifications will appear here.',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 15,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400

                        ),)
                    ],
                  ),
                )
              ],
            )
          ),
        ],
      ),
    );
  }
}
