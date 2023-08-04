import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:zerrins1/utils/text_feild.dart';

import '../../utils/color.dart';
import '../../utils/container.dart';
import '../../utils/fonts.dart';
class document extends StatefulWidget {
  const document({super.key});

  @override
  State<document> createState() => _documentState();
}

class _documentState extends State<document> {
  List<bool> _isSelected = [false, false, false,false];
  ScrollController _scrollController = ScrollController();
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  final List<String> items1 = [
    'Pending',
    'Accept',
    'Remove',
  ];



  //declaration
  String correction_address="yes";
  TextEditingController address_per_servey=TextEditingController();
  TextEditingController email=TextEditingController();
  String? customer_details;
  TextEditingController remark=TextEditingController();
  String? state;
  TextEditingController city=TextEditingController();
  TextEditingController pin_code=TextEditingController();
  TextEditingController mobile=TextEditingController();
  String? letter_reson;
  List<bool> sent_letter = [false];
  List<bool> repoted_garage = [false];








  @override
  void initState() {
    abc();
    super.initState();
  }
  final rows = <TableRow>[];
  final rows1 = <TableRow>[];
void abc()
{
 for(int i=1;i<10;i++)
   {
     rows.add( TableRow(
       decoration:BoxDecoration(
         color: i&2==0?Color(0xffF5F5F5):Colors.white,
           border: Border.all(
               width: .5,
               color: Color(0xff999999)
           )

       ),
       children: <Widget>[
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
           child: Center(
             child: Text(
               "Original Repair Invoice/Bill",textAlign: TextAlign.center,
               style: font_l,
             ),
           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20,),
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Color(0xffEFEFEF).withOpacity(.5),
                border: Border.all(
                  color: Color(0xff999999)
                )
              ),
              child: Center(
                child: Text("Attach File",style: TextStyle(color: Color(0xff069ED5),fontSize: 14,fontWeight: FontWeight.w600),),
              ),
            ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.white,
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),
             child: Center(
               child: Text("dd-mm-yy",style: font_l,),
             ),
           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Color(0xffEFEFEF).withOpacity(.5),
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),

           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.white,
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),

           ),
         ),
         Container(


           child: Center(
             child: Text(
               "0",textAlign: TextAlign.center,
               style: font_l,
             ),
           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 40),
           child: Container(
             height: 20,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Color(0xffEFEFEF).withOpacity(.5),
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),

           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(

            height: 30,
            decoration: BoxDecoration(
              color: Color(0xffCFCFCF).withOpacity(.2),
                border: Border.all(
                  color: Color(0xffCFCFCF),
                  

                ),
                borderRadius: BorderRadius.circular(5)
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton2<String>(
                isExpanded: true,
                hint: Text(
                  'Select ',
                  style: TextStyle(
                    fontSize: 12,
                    color: font_black,
                  ),
                ),
                items: items1
                    .map((String item) => DropdownMenuItem<String>(
                  value: item,
                  child: Text(
                    item,
                    style: const TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
                    .toList(),
                value: status,
                onChanged: (String? value) {
                  setState(() {
                    status = value;
                  });
                },
                buttonStyleData: const ButtonStyleData(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  height: 40,
                  width: 140,
                ),
                menuItemStyleData: const MenuItemStyleData(
                  height: 40,
                ),
              ),
            ),
          ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.white,
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),

           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.white,
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),

           ),
         ),
       ],
     ));
     rows1.add( TableRow(
       decoration:BoxDecoration(
           color: i&2==0?Color(0xffF5F5F5):Colors.white,
           border: Border.all(
               width: .5,
               color: Color(0xff999999)
           )

       ),
       children: <Widget>[
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
           child: Center(
             child: Text(
               "Original Repair Invoice/Bill",textAlign: TextAlign.center,
               style: font_l,
             ),
           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 10,),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Color(0xffEFEFEF).withOpacity(.5),
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),
             child: Center(
               child: Text("View",style: TextStyle(color: Color(0xff069ED5),fontSize: 14,fontWeight: FontWeight.w600),),
             ),
           ),
         ),
         Container(),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Color(0xffEFEFEF).withOpacity(.5),
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),
             child: Center(child: Text("29-Dec-2023",style: font_l,)),

           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.white,
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),

           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Colors.white,
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),
             child: Center(
               child: Text("dd-mm-yy",style: font_l,),
             ),
           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Color(0xffEFEFEF).withOpacity(.5),
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),
             child: Center(child: Text("Demo@gmail.com",style: font_l,)),

           ),
         ),
         Container(
           padding: EdgeInsets.symmetric(horizontal: 20),
           child: Container(
             height: 30,
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(5),
                 color: Color(0xffEFEFEF).withOpacity(.5),
                 border: Border.all(
                     color: Color(0xff999999)
                 )
             ),

           ),
         ),

       ],
     ));
   }
}

  String? status;
  @override
  Widget build(BuildContext context) {
    final me=MediaQuery.of(context).size;
    return Container(
      width: me.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Container(
              width: me.width * .45 ,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: _isSelected[0], onChanged: (bool? value)
                      {
                        setState(() {
                          _isSelected[0] = value ?? false;
                        });
                      }),
                      Text("Documents", style: font_l),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: _isSelected[1], onChanged: (bool? value)
                      {
                        setState(() {
                          _isSelected[1] = value ?? false;
                        });
                      }),
                      Text("Vehicle Photograph", style: font_l),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: _isSelected[2], onChanged: (bool? value)
                      {
                        setState(() {
                          _isSelected[2] = value ?? false;
                        });
                      }),
                      Text("Audio/Video", style: font_l),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(value: _isSelected[3], onChanged: (bool? value)
                      {
                        setState(() {
                          _isSelected[3] = value ?? false;
                        });
                      }),
                      Text("All", style: font_l),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 20,),

            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 30
              ),
              width: me.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Select Document",style: bold,),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: me.width * .4,
                            decoration: BoxDecoration(
                                color: Color(0xffDBF0F9),
                                border: Border.all(
                                    color: Color(0xff999999)
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Particulars as Per Policy",
                                  style: bold,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: me.width * .4,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff999999)
                                )
                            ),
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Documents",style: font_l,),
                                );
                              },
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            height: 39,
                            width: 42,
                            decoration: BoxDecoration(
                              gradient: g1,
                              borderRadius: BorderRadius.circular(7),),
                            child: Center(
                              child: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: 25,),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 39,
                            width: 42,
                            decoration: BoxDecoration(
                              gradient: g1,
                              borderRadius: BorderRadius.circular(7),),
                            child: Center(
                              child: Icon(Icons.keyboard_double_arrow_right_rounded,color: Colors.white,size: 35 ,),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 39,
                            width: 42,
                            decoration: BoxDecoration(
                              gradient: g1,
                              borderRadius: BorderRadius.circular(7),),
                            child: Center(
                              child: Icon(Icons.arrow_back_ios_rounded,color: Colors.white,size: 25,),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            height: 39,
                            width: 42,
                            decoration: BoxDecoration(
                              gradient: g1,
                              borderRadius: BorderRadius.circular(7),),
                            child: Center(
                              child: Icon(Icons.keyboard_double_arrow_left_rounded,color: Colors.white,size: 35 ,),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            height: 40,
                            width: me.width * .4,
                            decoration: BoxDecoration(
                                color: Color(0xffDBF0F9),
                                border: Border.all(
                                    color: Color(0xff999999)
                                )
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Particulars as Per Policy",
                                  style: bold,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 150,
                            width: me.width * .4,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Color(0xff999999)
                                )
                            ),
                            child: ListView.builder(
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Text("Documents",style: font_l,),
                                );
                              },
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
           SizedBox(height: 30,),

            Scrollbar(
              isAlwaysShown: true,
              controller: _scrollController,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                child: Column(
                  children: [
                    Table(
                      border: TableBorder.all(

                        color: Color(0xff999999),


                      ),
                      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                      columnWidths: const <int, TableColumnWidth>{
                        0: FixedColumnWidth(150),
                        1: FixedColumnWidth(150),
                        2:  FixedColumnWidth(150),
                        3: FixedColumnWidth(200),
                        4: FixedColumnWidth(140),
                        5: FixedColumnWidth(100),
                        6: FixedColumnWidth(100),
                        7: FixedColumnWidth(250),
                        8: FixedColumnWidth(200),
                        9: FixedColumnWidth(200)
                      },
                      children: <TableRow>[
                        TableRow(
                          decoration:BoxDecoration(
                            color: Color(0xffDBF0F9),
                            border: Border.all(
                                width: .1,
                                color: Color(0xff999999)
                            ),

                          ),
                          children: <Widget>[
                            Container(

                              width: me.width * .08,
                              child: Center(
                                child: Text(
                                  "Forms",
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(

                              width: me.width * .1,

                              child: Center(
                                child: Text(
                                  "Documents To Be Upload",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(


                              width: me.width * .1,

                              child: Center(
                                child: Text(
                                  "Received Date",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(


                              width: me.width * .08,

                              child: Center(
                                child: Text(
                                  "Uploaded Date",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(

                              width: me.width * .1,

                              child: Center(
                                child: Text(
                                  "Remarks",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(

                              width: me.width * .08,

                              child: Center(
                                child: Text(
                                  "No of Documents",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),

                              width: me.width * .1,

                              child: Center(
                                child: Text(
                                  "Required From Customer",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(


                              width: me.width * .12,

                              child: Center(
                                child: Text(
                                  "Documentt pending/partial pending from customer",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(


                              width: me.width * .1,
                              child: Center(
                                child: Text(
                                  "CM Remarks for Customer",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                            Container(


                              width: me.width * .1,

                              child: Center(
                                child: Text(
                                  "CM Remarks for Customer",textAlign: TextAlign.center,
                                  style: bold,
                                ),
                              ),
                            ),
                          ],
                        ),




                      ],
                    ),
                    Container(
                      height: 500,

                        child: SingleChildScrollView(
                          child: Column(
                            children: [

                              Table(
                                border: TableBorder.all(

                                  color: Color(0xff999999),

                                ),
                                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                columnWidths: const <int, TableColumnWidth>{
                                  0: FixedColumnWidth(150),
                                  1: FixedColumnWidth(150),
                                  2:  FixedColumnWidth(150),
                                  3: FixedColumnWidth(200),
                                  4: FixedColumnWidth(140),
                                  5: FixedColumnWidth(100),
                                  6: FixedColumnWidth(100),
                                  7: FixedColumnWidth(250),
                                  8: FixedColumnWidth(200),
                                  9: FixedColumnWidth(200)
                                },
                                children: rows,
                              )
                            ],
                          ),
                        ),
                      ),
                    // Container(
                    //
                    //   child:ListView.builder(
                    //     itemCount: 1,
                    //     itemBuilder: (context, index) {
                    //       return Table(
                    //         border: TableBorder.all(),
                    //         columnWidths:  <int, TableColumnWidth>{
                    //           0: IntrinsicColumnWidth(),
                    //
                    //         },
                    //         defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                    //         children: <TableRow>[
                    //           TableRow(
                    //             decoration:BoxDecoration(
                    //                 color: Color(0xffDBF0F9),
                    //                 border: Border.all(
                    //                     width: .5,
                    //                     color: Color(0xff999999)
                    //                 )
                    //
                    //             ),
                    //             children: <Widget>[
                    //               Container(
                    //
                    //                 width: me.width * .08,
                    //                 child: Center(
                    //                   child: Text(
                    //                     "Forms",
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //                 width: me.width * .1,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "Documents To Be Upload",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //
                    //                 width: me.width * .1,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "Received Date",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //
                    //                 width: me.width * .08,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "Uploaded Date",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //                 width: me.width * .1,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "Remarks",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //                 width: me.width * .08,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "No of Documents",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //                 padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),
                    //
                    //                 width: me.width * .1,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "Required From Customer",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //
                    //                 width: me.width * .12,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "Documentt pending/partial pending from customer",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //
                    //                 width: me.width * .1,
                    //                 child: Center(
                    //                   child: Text(
                    //                     "CM Remarks for Customer",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //               Container(
                    //
                    //
                    //                 width: me.width * .1,
                    //
                    //                 child: Center(
                    //                   child: Text(
                    //                     "CM Remarks for Customer",textAlign: TextAlign.center,
                    //                     style: bold,
                    //                   ),
                    //                 ),
                    //               ),
                    //             ],
                    //           ),
                    //
                    //         ],
                    //       );
                    //     },
                    //   ),
                    // ),

                  ],
                ),
              ),
            ),
            SizedBox(height: 40,),
            Container(
              width: me.width,
              padding: EdgeInsets.symmetric(horizontal: 60),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: me.width * .4,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Correction in address Yes/No",
                                  style: font_l,
                                ),
                                Container(
                                  width: me.width * .22,
                                  height: 30,
                                  child: Row(
                                    children: [
                                      Radio<String>(
                                        value: 'yes',
                                        groupValue: correction_address,
                                        onChanged: (value) {
                                          setState(() {
                                            correction_address = value!;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("Yes"),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Radio<String>(
                                        value: 'no',
                                        groupValue: correction_address,
                                        onChanged: (value) {
                                          setState(() {
                                            correction_address = value!;
                                          });
                                        },
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("No"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          size(),
                          textfeild4(address_per_servey, context, "Address as per survey", 4),
                          size(),
                          textfeild(email, context, "Insured Email ID"),
                          size(),
                          Container(
                            width: me.width * .4,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Correction in address Yes/No",
                                  style: font_l,
                                ),
                                Container(
                                  width: me.width * .22,

                                  height: 30,
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(value: repoted_garage[0], onChanged: (bool? value)
                                      {
                                        setState(() {
                                          repoted_garage[0] = value ?? false;
                                        });
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          size(),
                          Container(
                            width: me.width * .4,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Customer Details Bases on",style: font_l,),
                                Container(
                                  width: me.width * .22,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffCFCFCF),

                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Text(
                                        'Select ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: items
                                          .map((String item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                          .toList(),
                                      value: customer_details,
                                      onChanged: (String? value) {
                                        setState(() {
                                          customer_details = value;
                                        });
                                      },
                                      buttonStyleData: const ButtonStyleData(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        height: 40,
                                        width: 140,
                                      ),
                                      menuItemStyleData: const MenuItemStyleData(
                                        height: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          size(),
                          Container(
                            width: me.width * .4,
                            child: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Don’t send Letter",
                                  style: font_l,
                                ),
                                Container(
                                  width: me.width * .22,

                                  height: 30,
                                  child:  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Checkbox(value: sent_letter[0], onChanged: (bool? value)
                                      {
                                        setState(() {
                                          sent_letter[0] = value ?? false;
                                        });
                                      }),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          size(),





                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: me.width * .4,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("State",style: font_l,),
                                Container(
                                  width: me.width * .22,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffCFCFCF),

                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Text(
                                        'Select ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: items
                                          .map((String item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                          .toList(),
                                      value: state,
                                      onChanged: (String? value) {
                                        setState(() {
                                          state = value;
                                        });
                                      },
                                      buttonStyleData: const ButtonStyleData(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        height: 40,
                                        width: 140,
                                      ),
                                      menuItemStyleData: const MenuItemStyleData(
                                        height: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          size(),
                         textfeild(city, context, "City"),
                          size(),
                          textfeild(pin_code, context, "Pin Code"),
                          size(),
                          textfeild(mobile, context, "Verified Mobile No#."),
                          size(),
                          Container(
                            width: me.width * .4,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Don’t Send Letter Reason",style: font_l,),
                                Container(
                                  width: me.width * .22,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Color(0xffCFCFCF),

                                      ),
                                      borderRadius: BorderRadius.circular(5)
                                  ),
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton2<String>(
                                      isExpanded: true,
                                      hint: Text(
                                        'Select ',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Theme.of(context).hintColor,
                                        ),
                                      ),
                                      items: items
                                          .map((String item) => DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          style: const TextStyle(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ))
                                          .toList(),
                                      value: letter_reson,
                                      onChanged: (String? value) {
                                        setState(() {
                                          letter_reson = value;
                                        });
                                      },
                                      buttonStyleData: const ButtonStyleData(
                                        padding: EdgeInsets.symmetric(horizontal: 16),
                                        height: 40,
                                        width: 140,
                                      ),
                                      menuItemStyleData: const MenuItemStyleData(
                                        height: 40,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),





                        ],
                      )
                    ],
                  ),
                  size(),
                  textfeild1(remark, context, "Remark", 2),
                ],
              ),
            ),
            SizedBox(height: 20,),
            title_cont(context, "Vehicle Details"),
            SizedBox(height: 20,),
            Scrollbar(
              isAlwaysShown: true,
              controller: _scrollController,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                child: Container(
                  child: Column(
                    children: [
                      Container(

                        child: Table(
                          border: TableBorder.all(

                            color: Color(0xff999999),


                          ),
                          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                          columnWidths: const <int, TableColumnWidth>{
                            0: FixedColumnWidth(120),
                            1: FixedColumnWidth(80),
                            2:  FixedColumnWidth(100),
                            3: FixedColumnWidth(150),
                            4: FixedColumnWidth(230),
                            5: FixedColumnWidth(150),
                            6: FixedColumnWidth(250),
                            7: FixedColumnWidth(180),

                          },
                          children: <TableRow>[
                            TableRow(
                              decoration:BoxDecoration(
                                color: Color(0xffDBF0F9),
                                border: Border.all(
                                    width: .1,
                                    color: Color(0xff999999)
                                ),

                              ),
                              children: <Widget>[
                                Container(


                                  child: Center(
                                    child: Text(
                                      "Document Name",textAlign: TextAlign.center,
                                      style: bold,
                                    ),
                                  ),
                                ),
                                Container( ),
                                Container(


                                  width: me.width * .1,

                                  child: Center(
                                    child: Text(
                                      "System\n/\nManual",textAlign: TextAlign.center,
                                      style: bold,
                                    ),
                                  ),
                                ),
                                Container(


                                  width: me.width * .08,

                                  child: Center(
                                    child: Text(
                                      "Generated Date",textAlign: TextAlign.center,
                                      style: bold,
                                    ),
                                  ),
                                ),
                                Container(

                                  width: me.width * .1,

                                  child: Center(
                                    child: Text(
                                      "Airway Bill No.",textAlign: TextAlign.center,
                                      style: bold,
                                    ),
                                  ),
                                ),
                                Container(

                                  width: me.width * .08,

                                  child: Center(
                                    child: Text(
                                      "Date of Dispatch",textAlign: TextAlign.center,
                                      style: bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 7),

                                  width: me.width * .1,

                                  child: Center(
                                    child: Text(
                                      "Email ID",textAlign: TextAlign.center,
                                      style: bold,
                                    ),
                                  ),
                                ),
                                Container(


                                  width: me.width * .12,

                                  child: Center(
                                    child: Text(
                                      "demo",textAlign: TextAlign.center,
                                      style: bold,
                                    ),
                                  ),
                                ),

                              ],
                            ),




                          ],
                        ),
                      ),
                      Container(
                        height: 200 ,

                        child: SingleChildScrollView(
                          child: Column(
                            children: [

                              Table(
                                border: TableBorder.all(

                                  color: Color(0xff999999),

                                ),
                                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                                columnWidths: const <int, TableColumnWidth>{
                                  0: FixedColumnWidth(120),
                                  1: FixedColumnWidth(80),
                                  2:  FixedColumnWidth(100),
                                  3: FixedColumnWidth(150),
                                  4: FixedColumnWidth(230),
                                  5: FixedColumnWidth(150),
                                  6: FixedColumnWidth(250),
                                  7: FixedColumnWidth(180),


                                },
                                children: rows1,
                              )
                            ],
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 80,),
            Container(
              height: 35,
              width: me.width * .06,
              decoration: BoxDecoration(
                  gradient: g1, borderRadius: BorderRadius.circular(5)),
              child: Center(
                  child: Text(
                    "Save",
                    style: font_button,
                  )),
            ),




            SizedBox(height: 200,),
          ],
        ),
      ),
    );
  }
}
