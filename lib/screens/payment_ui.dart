import 'package:bmi_calculator/Constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../brain.dart';
import '../components/buttonWidget.dart';
import 'Results_Page.dart';

class PaymentScreen extends StatefulWidget {
  //const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text(
      //     'success',
      //     textAlign: TextAlign.center,
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   backgroundColor: Colors.white,
      // ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
             // padding: EdgeInsets.all(4.0),
              child: Lottie.network(
                  'https://assets5.lottiefiles.com/packages/lf20_ukjomnqi.json', width: 400,
                height: 200,),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        'Payment Completed',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w700,
                            fontSize: 19.0,
                            color: Colors.black),
                      ),
                      //SizedBox(height: 20.0,),
                      Container(
                        padding: EdgeInsets.all(25.0),
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing '
                          'and typesetting industry.'
                          'industry',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.poppins(
                            color: Colors.grey,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            height: 1.5,
                          ),
                        ),
                      ),
                      //SizedBox(height: 20.0,),
                      Text(
                        'Continue shopping',
                        style: GoogleFonts.poppins(
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      ),

                      SizedBox(height: 180),
                      GestureDetector(
                        onTap: (){
                          print('Clicked');
                        },
                          child: Container(
                            decoration: BoxDecoration(color: Colors.blueAccent, borderRadius: BorderRadius.circular(13)),
                            child: Center(
                              child: Text(
                                'Back to home',
                                style: GoogleFonts.poppins( fontSize: 15.0,
                                   fontWeight: FontWeight.w600,  color: Colors.white),
                              ),
                            ),

                            margin: EdgeInsets.only(left: 38.0, right: 38.0),
                            width: double.infinity,
                            height: 50,
                          ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
