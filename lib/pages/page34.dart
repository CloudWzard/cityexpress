import 'package:flutter/material.dart';

class Page34 extends StatefulWidget {
  const Page34({Key? key}) : super(key: key);

  @override
  State<Page34> createState() => _Page34State();
}

class _Page34State extends State<Page34> {

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100,),
            // The top widgets(arrow and Notification texts)
            Row(
              children: const [
                SizedBox(width: 30,),
                Icon(Icons.arrow_back,size: 30,color:Color(0xFF000000)  ,),
                SizedBox(width: 20,),
                Text('Customer Support',
                  style: TextStyle(
                      color: Color(0xFF000000),
                      fontSize: 25,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold
                  ),),
              ],
            ),
            // the header texts
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Have a challenge,kindly let us know so we can help you',
              style: TextStyle(
                  color: Color(0xFF000000),
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal
              ),),
            ),

            //the email form

//form columns
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Text('Email address',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),

                //email form
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Expanded(
                    child: Form(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: BorderSide(color: Colors.black, width: 5.0),
                          ),),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your email';
                          }
                          return null;
                        },
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 15,),
                //the report form
                const Padding(
                  padding: EdgeInsets.only(left: 17),
                  child: Text('Report',
                    style: TextStyle(
                        color: Color(0xFF000000),
                        fontSize: 20,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Form(
                    key: _formKey,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.black, width: 5.0),
                        ),),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your report';
                        }
                        return null;
                      },
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 300,),
            // button

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                color: Color(0xFF2F1267),
                elevation: 10.0,
                textTheme: ButtonTextTheme.primary,
                minWidth: double.infinity,
                height: 62.0,
                child: Text('Send',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    color: Colors.white
                  ),),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
