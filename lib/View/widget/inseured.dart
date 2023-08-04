import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:zerrins1/utils/text_feild.dart';

import '../../utils/color.dart';
import '../../utils/fonts.dart';
class inseured extends StatefulWidget {
  const inseured({super.key});

  @override
  State<inseured> createState() => _inseuredState();
}

class _inseuredState extends State<inseured> {
  TextEditingController _name =TextEditingController();
  TextEditingController _intimator=TextEditingController();
  TextEditingController _date=TextEditingController();
  TextEditingController _contect=TextEditingController();
  TextEditingController _time=TextEditingController();


  //losss
  TextEditingController l_date=TextEditingController();
  TextEditingController l_location=TextEditingController();
  TextEditingController p_lose=TextEditingController();
  TextEditingController l_state=TextEditingController();
  TextEditingController l_secound=TextEditingController();
  TextEditingController l_resone=TextEditingController();
  TextEditingController l_cause=TextEditingController();


  //indured Details 1 Coloum
  TextEditingController _1name=TextEditingController();
  TextEditingController _1add=TextEditingController();
  TextEditingController _1state=TextEditingController();
  TextEditingController _1city=TextEditingController();
  TextEditingController _1pin=TextEditingController();
  TextEditingController _1mobile=TextEditingController();
  TextEditingController _1whatsapp=TextEditingController();
  TextEditingController _1landline=TextEditingController();
  TextEditingController _1email=TextEditingController();
  TextEditingController _1addhar=TextEditingController();
  TextEditingController _1c_type=TextEditingController();

  //indured Details 2 Coloum
  TextEditingController _2name=TextEditingController();
  TextEditingController _2add=TextEditingController();
  TextEditingController _2state=TextEditingController();
  TextEditingController _2city=TextEditingController();
  TextEditingController _2pin=TextEditingController();

  TextEditingController _2mobile=TextEditingController();
  TextEditingController _2whatsapp=TextEditingController();
  TextEditingController _2landline=TextEditingController();
  TextEditingController _2email=TextEditingController();
  TextEditingController _2addhar=TextEditingController();


  //indured Details 3 Coloum
  TextEditingController _3name=TextEditingController();
  TextEditingController _3add=TextEditingController();
  TextEditingController _3state=TextEditingController();
  TextEditingController _3city=TextEditingController();
  TextEditingController _3pin=TextEditingController();
  TextEditingController _3mobile=TextEditingController();
  TextEditingController _3whatsapp=TextEditingController();
  TextEditingController _3landline=TextEditingController();
  TextEditingController _3email=TextEditingController();
  TextEditingController _3addhar=TextEditingController();
  TextEditingController _3res=TextEditingController();
  bool aadhar=false;

  @override
  Widget build(BuildContext context) {

    final me=MediaQuery.of(context).size;
    return Container(
      width: me.width ,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: me.width,
              color: Color(0xffD9D9D9),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: Text("Intimation Details",style: h1,),

            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: me.width * .9,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        textfeild(_name, context,"Intimated by"),
                        SizedBox(height: 10,),
                        textfeild(_date, context,"Date of intimation"),
                        SizedBox(height: 10,),
                        textfeild(_contect, context,"Intimator Contact#"),
                        SizedBox(height: 10,),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textfeild(_intimator, context,"Intimator Relation to Insured"),
                        SizedBox(height: 10,),
                        textfeild(_time, context,"Time of intimation")
                      ],
                    )
                  ],
                ),
              ),
            ),
            //lose
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: me.width,
              color: Color(0xffD9D9D9),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: Text("Loss Details",style: h1,),

            ),
            SizedBox(height: 10,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              primary: true,
              child: Container(
                width: me.width * .9,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              textfeild(l_date, context,"Date of Loss"),
                              SizedBox(height: 10,),
                              textfeild(l_location, context,"Loss Location"),
                              SizedBox(height: 10,),
                              textfeild(p_lose, context,"Primary Type of Loss"),
                              SizedBox(height: 10,),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              textfeild(l_date, context,"Date of Loss"),
                              SizedBox(height: 10,),
                              textfeild(l_state, context,"Loss State")
                            ],
                          )
                        ],
                      ),

                    ],
                  ),
                ),
              ),
            ),
            textfeild1(l_secound, context,"Secondary Type of Loss",1),
            SizedBox(height: 10,),
            textfeild1(l_resone, context,"Reason For delay in intimation(If Date of Intimation-Date of Loss > 7 Days)",4),
            SizedBox(height: 10,),
            textfeild1(l_cause, context,"Cause ofLoss /Disccrepancy",3),
            SizedBox(height: 10,),
            Container(
              height: 40,
              width: me.width,
              color: Color(0xffD9D9D9),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: Text("Indured Detail",style: h1,),

            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: me.width,
              padding: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9)
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Text("Details as per Policy",style: bold,),
                    SizedBox(width: me.width * .16,),
                    Text("Details as per intimation ",style: bold,),
                    SizedBox(width: me.width * .16,),
                    Row(
                      children: [
                        Text("Details as per Servey/\nClaim Form ",style: bold,),
                        SizedBox(width: me.width * .02,),
                        Container(
                          height: 35,
                          width: me.width* .15,
                          decoration: BoxDecoration(
                              gradient: g1,
                              borderRadius: BorderRadius.circular(5)

                          ),
                          child: Center(child: Text("Copy From intimation",style: font_button,)),
                        )

                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(width: me.width * .31,
                  child: Column(
                    children: [
                      textfeild2(_1name, context, "Insured Name"),
                      SizedBox(height: 10,),
                      textfeild3(_1add, context, "Address",4),
                      SizedBox(height: 10,),
                      textfeild2(_1state, context, "State"),
                      SizedBox(height: 10,),
                      textfeild2(_1city, context, "City"),
                      SizedBox(height: 10,),
                      textfeild2(_1pin, context, "Pin Code"),
                      SizedBox(height: 10,),
                      textfeild2(_1mobile, context, "Mobile#"),
                      SizedBox(height: 10,),
                      textfeild2(_1whatsapp, context, "WhatsApp No#"),
                      SizedBox(height: 10,),
                      textfeild2(_1landline, context, "Landline#"),
                      SizedBox(height: 10,),
                      textfeild2(_1email, context, "Email ID"),
                      SizedBox(height: 10,),
                      textfeild2(_1addhar, context, "Adhara# "),
                      SizedBox(height: 10,),
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Customer Type",style: font_l,),
                            Container(
                              width: me.width * .18,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: Color(0xff00EA3A),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                              child: TextFormField(
                                controller: _1c_type,
                                cursorColor: Colors.grey,
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: 'Enter a Customer Type',
                                  hintStyle:
                                  TextStyle(fontSize: 12, color: Colors.grey),
                                  contentPadding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  disabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                      color:
                                      Colors.grey,
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                        Colors.grey
                                    ),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: BorderSide(
                                        color:
                                        Colors.grey
                                    ),
                                  ),

                                ),

                              ),
                            ),
                          ],
                        ),
                      )



                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Container(width: me.width * .31,
                  child: Column(
                    children: [
                      textfeild2(_2name, context, "Insured Name"),
                      SizedBox(height: 10,),
                      textfeild3(_2add, context, "Address",4),
                      SizedBox(height: 10,),
                      textfeild2(_2state, context, "State"),
                      SizedBox(height: 10,),
                      textfeild2(_2city, context, "City"),
                      SizedBox(height: 10,),
                      textfeild2(_2pin, context, "Pin Code"),
                      SizedBox(height: 10,),
                      textfeild2(_2mobile, context, "Mobile#"),
                      SizedBox(height: 10,),
                      textfeild2(_2whatsapp, context, "WhatsApp No#"),
                      SizedBox(height: 10,),
                      textfeild2(_2landline, context, "Landline#"),
                      SizedBox(height: 10,),
                      textfeild2(_2email, context, "Email ID"),
                      SizedBox(height: 10,),
                      textfeild2(_2addhar, context, "Adhara# "),
                      SizedBox(height: 200,),
                      Container(
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                          gradient: g1,
                          borderRadius: BorderRadius.circular(5)
                        ),
                      )



                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Container(width: me.width * .31,
                  child: Column(
                    children: [
                      textfeild2(_3name, context, "Insured Name"),
                      SizedBox(height: 10,),
                      textfeild3(_3add, context, "Address",4),
                      SizedBox(height: 10,),
                      textfeild2(_3state, context, "State"),
                      SizedBox(height: 10,),
                      textfeild2(_3city, context, "City"),
                      SizedBox(height: 10,),
                      textfeild2(_3pin, context, "Pin Code"),
                      SizedBox(height: 10,),
                      textfeild2(_3mobile, context, "Mobile#"),
                      SizedBox(height: 10,),
                      textfeild2(_3whatsapp, context, "WhatsApp No#"),
                      SizedBox(height: 10,),
                      textfeild2(_3landline, context, "Landline#"),
                      SizedBox(height: 10,),
                      textfeild2(_3email, context, "Email ID"),
                      SizedBox(height: 10,),
                      textfeild2(_3addhar, context, "Adhara# "),
                      SizedBox(height: 10,),
                      Container(
                        width: me.width * .4,
                        child: Row(

                          children: [
                            Text("Exempted From\nAdhar",style: font_l,),
                            SizedBox(width: me.width * .045,),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if(aadhar==true)
                                    {
                                      aadhar=false;
                                    }
                                  else
                                    {
                                      aadhar=true;
                                    }
                                });

                              },
                              child: Container(
                                width: 20.0,
                                height: 20.0,
                                decoration: BoxDecoration(
                                  shape: BoxShape.rectangle,
                                  border: Border.all(width: 2.0, color: Colors.grey),
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                child: aadhar
                                    ? Icon(
                                  Icons.check,
                                  size: 16.0,
                                  color: Colors.black,
                                )
                                    : null,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      textfeild2(_3res, context, "Reason for\nExemption"),
                    ],
                  ),
                ),

              ],
            ),
            SizedBox(height: 500,)
          ],
        ),
      ),
    );
  }
}
