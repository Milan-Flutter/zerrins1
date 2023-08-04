import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:zerrins1/utils/text_feild.dart';

import '../../utils/color.dart';
import '../../utils/fonts.dart';

class pay_ment extends StatefulWidget {
  const pay_ment({super.key});

  @override
  State<pay_ment> createState() => _pay_mentState();
}

class _pay_mentState extends State<pay_ment> {

  String type_payment="On Account Payment";
  TextEditingController email=TextEditingController();
  String?  pay_to;
  String? pay_name;
  TextEditingController idv=TextEditingController();
  TextEditingController amount=TextEditingController();
  String? mode_sellement;
  TextEditingController setalment_type=TextEditingController();
  TextEditingController approved_amount=TextEditingController();
  TextEditingController type_loss=TextEditingController();






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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                height: 40,
                width: me.width,
                decoration: BoxDecoration(
                  color: Color(0xffD9D9D9).withOpacity(.3),
                  border: Border.all(
                    color: Color(0xff069ED5).withOpacity(.3)
                  )
                ),

                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Radio<String>(
                          value: 'On Account Payment',
                          groupValue: type_payment,
                          onChanged: (value) {
                            setState(() {
                              type_payment = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("On Account Payment",style: font_blue,),
                      ],
                    ),
                       Row(
                     children: [
                       Radio<String>(
                         value: 'Final Payment',
                         groupValue: type_payment,
                         onChanged: (value) {
                           setState(() {
                             type_payment = value!;
                           });
                         },
                       ),
                       SizedBox(
                         width: 5,
                       ),
                       Text("Final Payment",style: font_blue,),
                     ],
                       ),
                    Row(
                      children: [
                        Radio<String>(
                          value: 'Expense',
                          groupValue: type_payment,
                          onChanged: (value) {
                            setState(() {
                              type_payment = value!;
                            });
                          },
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Expense",style: font_blue,),
                      ],
                    ),
                  ],
                ),

              ),
            ),
            SizedBox(height: 30,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                width: me.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        textfeild(email, context, "Insured Email ID"),
                        size(),
                        Container(
                  width: me.width * .4,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Payment To",
                        style: font_l,
                      ),
                      Container(
                        width: me.width * .22,
                        height: 30,
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffCFCFCF),
                            ),
                            borderRadius: BorderRadius.circular(5)),
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
                                .map((String item) =>
                                DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                                .toList(),
                            value: pay_to,
                            onChanged: (String? value) {
                              setState(() {
                                pay_to = value;
                              });
                            },
                            buttonStyleData: const ButtonStyleData(
                              padding:
                              EdgeInsets.symmetric(horizontal: 16),
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
                        SizedBox(height: 40,),
                        Container(
                          width: me.width * .4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Payee Name",
                                style: font_l,
                              ),
                              Container(
                                width: me.width * .22,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffCFCFCF),
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
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
                                        .map((String item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                        .toList(),
                                    value: pay_name,
                                    onChanged: (String? value) {
                                      setState(() {
                                        pay_name = value;
                                      });
                                    },
                                    buttonStyleData: const ButtonStyleData(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 16),
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
                        SizedBox(height: 5,),
                        Container(
                          width: me.width * .4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                             Container(
                                width: me.width * .22,
                                height: 30,
                                child:  Text(
                                  "Payee Name Please enter payee Name",
                                  style: font_l,
                                ),
                              ),
                            ],
                          ),
                        ),
                        size(),
                        SizedBox(height: 60,),
                        textfeild(idv, context, "Total IDV/Suminsured"),
                        size(),
                        textfeild(amount, context, "Amount")


                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: me.width * .4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Mode of sellement",
                                style: font_l,
                              ),
                              Container(
                                width: me.width * .22,
                                height: 30,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Color(0xffCFCFCF),
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
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
                                        .map((String item) =>
                                        DropdownMenuItem<String>(
                                          value: item,
                                          child: Text(
                                            item,
                                            style: const TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ))
                                        .toList(),
                                    value: mode_sellement,
                                    onChanged: (String? value) {
                                      setState(() {
                                        mode_sellement = value;
                                      });
                                    },
                                    buttonStyleData: const ButtonStyleData(
                                      padding:
                                      EdgeInsets.symmetric(horizontal: 16),
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
                        textfeild(setalment_type, context, "Selletlment Type"),
                        size(),
                        textfeild(approved_amount, context, "Approved Amount"),
                        size(),
                        textfeild(type_loss, context, "Type of loss"),


                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
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
            SizedBox(height: 300,),

          ],
        ),
      ),
    );
  }
}
