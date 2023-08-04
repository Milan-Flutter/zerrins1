import 'package:flutter/material.dart';
import 'package:slide_switcher/slide_switcher.dart';
import 'package:zerrins1/View/widget/Garage_details.dart';
import 'package:zerrins1/View/widget/document.dart';
import 'package:zerrins1/View/widget/inseured.dart';
import 'package:zerrins1/View/widget/lae_details.dart';
import 'package:zerrins1/View/widget/neft_aadhar.dart';
import 'package:zerrins1/View/widget/payment.dart';
import 'package:zerrins1/View/widget/survey.dart';
import 'package:zerrins1/View/widget/survey_1.dart';
import 'package:zerrins1/utils/color.dart';
import 'package:zerrins1/utils/fonts.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  TextEditingController _serchController=TextEditingController();
  int switcherIndex3 = 0;
  int switcherIndex2 = 0;
  @override
  Widget build(BuildContext context) {

    final me=MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  Image.asset("assets/img.png",height: 120,width: 120,),
                  Container(
                    width: me.width * .65,
                    height: 40,
                    child: TextFormField(
                      controller: _serchController,
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search_rounded),
                        prefixIconColor: Colors.grey,
                        hintText: "Search",
                        hintStyle:
                        TextStyle(fontSize: 12, color: Colors.black),

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
                  SizedBox(width: 20,),
                  Row(
                    children: [
                      Text("Welcome, Lokesh Kumar", style: Theme.of(context).textTheme.bodyText1,),
                      Icon(Icons.arrow_drop_down_outlined,color: Colors.black,)
                    ],
                  )
                ],
              ),
            ),
            
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
             child: Column(

                children: [
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
                          Row(
                            children: [
                              Text("Policy Status: ",style: bold,),

                              Text("Active", style: font_b1,)
                            ],
                          ),
                          SizedBox(width: me.width * .05,),

                          Row(
                            children: [
                              Text("Age of Claim in Days: ",style: bold,),
                              Text("2", style: font_b1,)
                            ],
                          ),
                          SizedBox(width: me.width * .05,),
                          Row(
                            children: [
                              Text("Claim No.: ",style: bold,),
                              Text("12981", style:font_b1,)
                            ],
                          ),
                          SizedBox(width: me.width * .05,),
                          Row(
                            children: [
                              Text("Vehicle No.: ",style: bold,),
                              Text("KA 21 MD 1779", style:font_b1,)
                            ],
                          ),
                          SizedBox(width: me.width * .05,),
                          Row(
                            children: [
                              Text("Claim Status: ",style: bold,),
                              Text("Documents Pending", style: font_b1,)
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,

                    child: SlideSwitcher(
                      children: const [
                        Text(
                          'Claim Details ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize:15
                          ),
                        ),
                        Text(
                          'LAE Details ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize:15
                          ),
                        ),
                        Text(
                          'Survey  ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize:15
                          ),
                        ),
                        Text(
                          'Documents ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize:15
                          ),
                        ),
                        Text(
                          'Assessment ',
                          style:TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize:15
                          ),
                        ),
                        Text(
                          'Payment ',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Poppins',
                              fontSize:14
                          ),
                        ),
                      ],
                      initialIndex: 0,

                      // onSelect: (int index) => setState(() => switcherIndex3 = index),
                      onSelect: (int index)
                      {
                        setState(() {
                          switcherIndex3=index;
                          print(switcherIndex3.toString());
                          print("kjsf"+me.width.toString());
                        });
                      },


                      containerBorderRadius: 5,

                      containerBorder: Border.all(
                        width: 1,
                        color: Colors.black,
                      ),
                      containerColor: const Color(0xffFF8000),
                      slidersColors: const [
                        Colors.white,
                      ],
                      containerHeight: 50,
                      containerWight: me.width,



                    ),
                  ),
                  SizedBox(height: 10,),
                  if(switcherIndex3==0)
                    Column(
                      children: [
                        Container(
                          width: me.width,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: SlideSwitcher(
                              children: const [
                                Text(
                                  'Insured Details',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize:15
                                  ),
                                ),
                                Text(
                                  'Initial Survey Details',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize:15
                                  ),
                                ),
                                Text(
                                  'Garage Details',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize:15
                                  ),
                                ),
                                Text(
                                  'NEFT/Adhar Details',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'Poppins',
                                      fontSize:15
                                  ),
                                ),

                              ],
                              initialIndex: 0,
                              // onSelect: (int index) => setState(() => switcherIndex3 = index),
                              onSelect: (int index)
                              {
                                setState(() {
                                  switcherIndex2=index;
                                  print(switcherIndex2.toString());
                                });
                              },

                              containerBorderRadius: 5,

                              containerBorder: Border.all(
                                width: 1,
                                color: Colors.black,
                              ),
                              containerColor: const Color(0xff149197),
                              slidersColors: const [
                                Colors.white,
                              ],

                              containerHeight: 50,
                              containerWight: me.width,


                            ),
                          ),
                        ),
                        Container(
                          height: 1,
                          width: me.width * .9,
                          margin: EdgeInsets.symmetric(vertical: 20),
                          color: Colors.black,
                        ),
                        if(switcherIndex2==0)
                          Container(
                            child: inseured(),
                          )
                        else if(switcherIndex2==1)
                          Container(
                            child: Survey(),
                          )
                        else if(switcherIndex2==2)
                          Container(
                            child: garage_detils(),
                          )
                        else if(switcherIndex2==3)
                          Container(
                            child: neft_aadhar(),
                          )

                      ],
                    )
                  else if(switcherIndex3==1)
                    lae_details()
                  else if(switcherIndex3==2)
                      survey_1()
                  else if(switcherIndex3==3)
                    document()
                  else if(switcherIndex3==5)
                    pay_ment()




                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}