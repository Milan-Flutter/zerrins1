import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:zerrins1/utils/container.dart';
import 'package:zerrins1/utils/text_feild.dart';
import 'package:intl/intl.dart';

import '../../utils/color.dart';
import '../../utils/fonts.dart';
class lae_details extends StatefulWidget {
  const lae_details({super.key});

  @override
  State<lae_details> createState() => _lae_detailsState();
}

class _lae_detailsState extends State<lae_details> {

  String? garage;
  String? hub;
  String? type_of_servay;
  String ? surveyor_type;
  String? name;
  String? category;
  DateTime? appoiment;
  TextEditingController expirey_date=TextEditingController();
  TextEditingController l_no=TextEditingController();
  TextEditingController mobile_no=TextEditingController();
  TextEditingController remark=TextEditingController();
  ScrollController _scrollController = ScrollController();


  String? status;
  Future<DateTime?> _selectSelectDate(BuildContext context, DateTime abc)
  async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: abc,
      firstDate: DateTime(2020, 12),
      lastDate: DateTime(2100, 01),
    );
    if (picked != null) {
      return picked;
    }
    return null;
  }
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
  @override
  Widget build(BuildContext context) {
    final me=MediaQuery.of(context).size;
    return Container(
      width: me.width,
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            title_cont(context, "LAE Information"),
            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: me.width * .4,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Settlement Type",style: font_l,),
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
                                  value: garage,
                                  onChanged: (String? value) {
                                    setState(() {
                                      garage = value;
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Hub",style: font_l,),
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
                                  value: hub,
                                  onChanged: (String? value) {
                                    setState(() {
                                      hub = value;
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Type of servey",style: font_l,),
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
                                  value: type_of_servay,
                                  onChanged: (String? value) {
                                    setState(() {
                                      type_of_servay = value;
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Appointment Date", style: font_l),
                            Row(
                              children: [
                                Container(
                                  width: me.width * .19,
                                  height: 30,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Color(0xffD9D9D9))),
                                  child: appoiment == null
                                      ? Text("Select Date", style: font_b1)
                                      : Text(
                                    DateFormat('dd-MMM-yyyy').format(appoiment!),
                                    style: font_b1,
                                  ),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () async {
                                    if (appoiment == null) {
                                      appoiment = await _selectSelectDate(context, DateTime.now());
                                      setState(() {});
                                    } else {
                                      appoiment = await _selectSelectDate(context, appoiment!);
                                      setState(() {});
                                    }
                                  },
                                  child: Image.asset("assets/img_1.png", height: 30, width: 30),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                      size(),
                      textfeild(expirey_date, context, "License Expiry date"),
                      size(),
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Mobile Number",style: font_l,),
                            Container(
                              width: me.width * .22,
                              height: 30,
                              color: Color(0xffD9D9D9).withOpacity(.2),
                              child: TextFormField(
                                controller: mobile_no,
                                cursorColor: Colors.grey,
                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: '+91 0000000000',
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
                  SizedBox(width: 40,),
                  Column(
                    children: [
                      Container(
                        width: me.width * .4,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Surveyor Type",style: font_l,),
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
                                  value: surveyor_type,
                                  onChanged: (String? value) {
                                    setState(() {
                                      surveyor_type = value;
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Surveyor Name",style: font_l,),
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
                                  value: name,
                                  onChanged: (String? value) {
                                    setState(() {
                                      name = value;
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Category",style: font_l,),
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
                                  value: category,
                                  onChanged: (String? value) {
                                    setState(() {
                                      category = value;
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
                      textfeild(l_no, context, "License No."),
                      size(),
                      textfeild(remark, context, "Remarks"),

                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              height: 35,
              width: me.width* .06,
              decoration: BoxDecoration(
                  gradient: g1,
                  borderRadius: BorderRadius.circular(5)

              ),
              child: Center(child: Text("Add",style: font_button,)),
            ),
            SizedBox(height: 20,),
            Scrollbar(
              isAlwaysShown: true,
              controller: _scrollController,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                controller: _scrollController,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      width: me.width,

                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(),
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 60,
                              width: me.width * .1,
                              decoration: BoxDecoration(
                                color: Color(0xffDBF0F9),
                              ),
                              child: Center(
                                child: Text(
                                  "Garage\nName",
                                  style: font_b1,
                                ),
                              ),
                            ),
                            cont2("Surveyor Type", context),
                            cont2("Type of Survey", context),
                            cont2("Hub Name", context),
                            cont2("Surveyor Name", context),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 60,
                              width: me.width * .12,
                              decoration: BoxDecoration(
                                color: Color(0xffDBF0F9),
                              ),
                              child: Center(
                                child: Text(
                                  "Mobile no",
                                  style: font_b1,
                                ),
                              ),
                            ),
                            cont2("License No.", context),
                            cont2("Category", context),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 60,
                              width: me.width * .1,
                              decoration: BoxDecoration(
                                color: Color(0xffDBF0F9),
                              ),
                              child: Center(
                                child: Text(
                                  "Appointment\nDate",
                                  textAlign: TextAlign.center,
                                  style: font_b1,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              height: 60,
                              width: me.width * .12,
                              decoration: BoxDecoration(
                                color: Color(0xffDBF0F9),
                              ),
                              child: Center(
                                child: Text(
                                  "Appointment Status",
                                  textAlign: TextAlign.center,
                                  style: font_b1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 200,
                      width: me.width,
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: me.width * .1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .1
                                    )
                                ),
                                child: Center(
                                  child: Text(
                                    "NA",
                                    style:font_b1,
                                  ),
                                ),
                              ),
                              cont3("Internal", context),
                              cont3("Final", context),
                              cont3("Bangalro", context),
                              cont3("Lokesh rm", context),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: me.width * .12,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .1
                                    )
                                ),
                                child: Center(
                                  child: Text(
                                    "+917878787878",
                                    style: font_b1,
                                  ),
                                ),
                              ),
                              cont3("0", context),
                              cont3("NA", context),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: me.width * .1,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .1
                                    )
                                ),
                                child: Center(
                                  child: Text(
                                    "24-Dec-2022",
                                    textAlign: TextAlign.center,
                                    style:font_b1,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                width: me.width * .12,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: .1
                                    )
                                ),
                                child: Center(
                                  child: Container(
                                    width: me.width * .11,
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
                              ),
                            ],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 60,),
            Container(
              height: 35,
              width: me.width* .06,
              decoration: BoxDecoration(
                  gradient: g1,
                  borderRadius: BorderRadius.circular(5)

              ),
              child: Center(child: Text("Save",style: font_button,)),
            ),

            SizedBox(height: 500,)
          ],
        ),
      ),
    );
  }
}
