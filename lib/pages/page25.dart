import 'package:flutter/material.dart';

import '../widget/container.dart';

class Page25 extends StatefulWidget {
  const Page25({Key? key}) : super(key: key);

  @override
  State<Page25> createState() => _Page25State();
}

class _Page25State extends State<Page25> {
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
             child: Column(
              children: [
                SizedBox(height: 100,),
                // The top widgets(arrow and Notification texts)
                Row(
                  children: const [
                    SizedBox(width: 30,),
                    Icon(Icons.arrow_back,size: 40,color:Color(0xFFFFFFFF)  ,),
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

                SizedBox(height: 30,),

                // The Containers

                MyContainer(
                  imagePath: ("assets/notification/correct.png"),
                  loanStatus: 'Loan SuccessFul',
                  loanType: 'Education Loan',
                  buttonText: 'View details',
                ),

                SizedBox(height: 10,),

                MyContainer(
                  imagePath: ("assets/notification/cancel.png"),
                  loanStatus: 'Loan Declined',
                  loanType: 'Education Loan',
                  buttonText: 'View details',
                ),

              ],
          ),
           ),
        ],
      ),
    );
  }
}
