import 'dart:core';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:zerrins1/utils/container.dart';
import 'package:zerrins1/utils/text_feild.dart';

import '../../utils/color.dart';
import '../../utils/fonts.dart';
class garage_detils extends StatefulWidget {
  const garage_detils({super.key});

  @override
  State<garage_detils> createState() => _garage_detilsState();
}

class _garage_detilsState extends State<garage_detils> {

TextEditingController g_name=TextEditingController();
TextEditingController l_location=TextEditingController();
TextEditingController p_loss=TextEditingController();
TextEditingController date_loss=TextEditingController();
TextEditingController loss_state=TextEditingController();

//colum2
  TextEditingController _g_name=TextEditingController();
  TextEditingController _g_city=TextEditingController();
  TextEditingController _g_location=TextEditingController();
  TextEditingController _g_add=TextEditingController();
  TextEditingController _g_pincode=TextEditingController();
  String? _g_state;
  String? make_vehicle;
  String _g_status="cashless";
  List<String> hobbies = [];



  List<bool> _isSelected = [false, false, false,false,false];





  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];





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

              width: me.width,

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                  ),
                  child: Row(
                    children: [
                      cont("Garage ID", context),
                      cont("Garage Name", context),
                      cont("Garage Address", context),
                      cont("GSTIN No", context),
                      cont("GST Recon %", context),
                      cont("Contact Person", context),
                      cont("Mobile Number", context),
                      cont("Garage State", context),
                      cont("Garage Location", context),
                      cont("Garage City", context),
                      cont("Garage State", context),
                      cont("Action", context),
                    ],
                  ),
                ),
              ),
            ),
            Container(

              width: me.width,

              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    cont1("Garage ID", context),
                    cont1("Garage Name", context),
                    cont1("Garage Address", context),
                    cont1("GSTIN No", context),
                    cont1("GST Recon %", context),
                    cont1("Contact Person", context),
                    cont1("Mobile Number", context),
                    cont1("Garage State", context),
                    cont1("Garage Location", context),
                    cont1("Garage City", context),
                    cont1("Garage State", context),
                    cont1("Action", context),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
           Container(
              height: 35,
              width: me.width* .15,
              decoration: BoxDecoration(
                  gradient: g1,
                  borderRadius: BorderRadius.circular(5)

              ),
              child: Center(child: Text("Search and add",style: font_button,)),
            ),
            SizedBox(height: 40,),
            Text("Garage Search",style:title,),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 100,vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                    textfeild(g_name, context,"Garage Name"),
                    size(),
                    textfeild(l_location, context,"Loss Location"),
                    size(),
                    textfeild(p_loss, context,"Primary Type of\nLoss"),
                  ],
                ),
                  Column(
                    children: [
                      textfeild(date_loss, context,"Date of Loss"),
                      size(),
                      textfeild(loss_state, context,"Loss State"),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 35,
              width: me.width* .15,
              decoration: BoxDecoration(
                  gradient: g1,
                  borderRadius: BorderRadius.circular(5)

              ),
              child: Center(child: Text("Search and add",style: font_button,)),
            ),
            SizedBox(height: 40,),
            Text("Garage Search",style:title,),
            SizedBox(height: 40,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          textfeild(_g_name, context,"Garage Name"),
                          size(),
                          Container(
                            width: me.width * .4,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Garage State",style: font_l,),
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
                                      value: _g_state,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _g_state = value;
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
                          textfeild(_g_location, context,"Location of Garage"),
                          size(),
                          textfeild(_g_pincode, context,"Garage PinCode"),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: me.width * .4,

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Impact of loss",style: font_l,),
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
                                      value: _g_state,
                                      onChanged: (String? value) {
                                        setState(() {
                                          _g_state = value;
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
                          textfeild(_g_city, context,"Garage City"),
                          size(),
                          textfeild(_g_add, context,"Garage Address"),


                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Garage Status", style: font_l),
                      SizedBox(width: 20,),
                      Container(
                        width: me.width * .6,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                           Container(
                             child: Row(
                               children: [
                                 Radio<String>(
                                   value: 'Cashless',
                                   groupValue: _g_status,
                                   onChanged: (value) {
                                     setState(() {
                                       _g_status = value!;
                                     });
                                   },
                                 ),
                                 SizedBox(width: 5,),

                                 Text("Cashless"),
                               ],
                             ),
                           ),

                            Container(
                              child: Row(
                                children: [
                                  Radio<String>(
                                    value: 'NoCashless',
                                    groupValue: _g_status,
                                    onChanged: (value) {
                                      setState(() {
                                        _g_status = value!;
                                      });
                                    },
                                  ),
                                  SizedBox(width: 5,),
                                  Text("NoCashless"),
                                ],
                              ),
                            ),
                         Container(
                           child: Row(
                             children: [

                               Radio<String>(
                                 value: 'All',
                                 groupValue: _g_status,
                                 onChanged: (value) {
                                   setState(() {
                                     _g_status = value!;
                                   });
                                 },
                               ),
                               SizedBox(width: 5,),
                               Text("All"),
                             ],
                           ),
                         )
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Garage Type", style: font_l),

                      Container(
                        width: me.width * .7,
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
                              Text("Dealer", style: font_l),
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
                                Text("Authorized Service Center", style: font_l),
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
                                Text("Multi-Brand\nGarage", style: font_l),
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
                                Text("Windshield Garage", style: font_l),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(value: _isSelected[4], onChanged: (bool? value)
                                {
                                  setState(() {
                                    _isSelected[4] = value ?? false;
                                  });
                                }),
                                Text("Ancillary", style: font_l),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: me.width *.9,
              decoration: BoxDecoration(
                  color: Color(0xffD9D9D9).withOpacity(.5),
                  border: Border.all(
                    color: Color(0xffD9D9D9)
                  )
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: me.width* .06,
                    decoration: BoxDecoration(
                        gradient: g1,
                        borderRadius: BorderRadius.circular(5)

                    ),
                    child: Center(child: Text("Search",style: font_button,)),
                  ),
                  SizedBox(width: 10,),
                  Container(
                    height: 35,
                    width: me.width* .15,
                    decoration: BoxDecoration(
                        gradient: g1,
                        borderRadius: BorderRadius.circular(5)

                    ),
                    child: Center(child: Text("Search and add",style: font_button,)),
                  ),
                ],
              ),

            ),




            SizedBox(height: 500,)
          ],
        ),
      ),
    );
  }
}
