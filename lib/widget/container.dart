import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final String loanStatus;
  final String loanType;
  final String buttonText;
  final String imagePath;

  MyContainer({
    required this.loanStatus,
    required this.loanType,
    required this.buttonText,
    required this.imagePath,
});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
          padding: EdgeInsets.fromLTRB(5, 20, 20,10),
          decoration: BoxDecoration(
              color: Colors.black26,
              border: Border.all(color:Colors.transparent,width: 2),
              borderRadius: BorderRadius.circular(10)
          ),
          //main row
          child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //sub row
                Row(
                  children: [
                    //image
                    SizedBox(
                      width: 45,
                      height: 40,
                      child: Image(
                        image: AssetImage(imagePath,),
                      ),
                    ),

                    SizedBox(width: 6,),
                    //column for the texts
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(loanStatus,
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500


                          ),
                        ),
                        Text(loanType,
                          style: TextStyle(
                              color: Color(0xFFB9BCC8),
                              fontSize: 12,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.normal

                          ),)
                      ],
                    )
                  ],
                ),

                //view details button
                // MaterialButton(
                //   onPressed: (){},
                //   child: Text('View details',
                //   style: TextStyle(
                //       color: Color(0xFFFFFFFF),
                //       fontSize: 15,
                //       fontFamily: 'Poppins',
                //       fontWeight: FontWeight.normal
                //   ),),
                // )

                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  color: Color(0xFF2F1267),
                  elevation: 10.0,
                  textTheme: ButtonTextTheme.primary,
                  minWidth: 100.0,
                  height: 42.0,
                  child: Text(buttonText,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 13,
                    ),),
                  onPressed: () {},
                )

              ]
          )
      ),
    );
  }
}
