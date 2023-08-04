import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:zerrins1/utils/text_feild.dart';
import '../../utils/color.dart';
import '../../utils/fonts.dart';

class Survey extends StatefulWidget {
  const Survey({super.key});

  @override
  State<Survey> createState() => _SurveyState();
}

class _SurveyState extends State<Survey> {


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

  // Loss Details Colum1
  DateTime? v_r_date;
  DateTime? survey_date;
  String _repoted_garage = 'yes';
  TextEditingController _esti_loss=TextEditingController();
  String? impect_loss;
  String? event;
  String? setalment_type;
  DateTime? w_o_date;
  TextEditingController odp_reading=TextEditingController();
  String _o_insured = 'yes';


  // Loss Details Colum2
  TextEditingController s_type_loss=TextEditingController();
  TextEditingController vr_date_HH=TextEditingController();
  TextEditingController vr_date_MM=TextEditingController();
  TextEditingController sur_date_HH=TextEditingController();
  TextEditingController sur_date_MM=TextEditingController();
  TextEditingController liabllity=TextEditingController();
    String _Catastrophic = 'yes';
  TextEditingController def_res_amount=TextEditingController();
  TextEditingController IDV=TextEditingController();
  TextEditingController wo_date_HH=TextEditingController();
  TextEditingController wo_date_MM=TextEditingController();
  DateTime? tentive_repaire;
  String _vehical_done = 'yes';


  //customer Details
  String customer_Conracted = 'yes';
  String explain_customer = 'yes';
  String? profile;
  String? Reason;
  TextEditingController remark=TextEditingController();
  String black_list = 'yes';
  TextEditingController black_remark=TextEditingController();


  @override
  Widget build(BuildContext context) {
    final me = MediaQuery.of(context).size;
    return Container(
      width: me.width,

      child: SingleChildScrollView(
        child: Column(

          children: [
            Container(
              height: 40,
              width: me.width,
              color: Color(0xffD9D9D9),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: Text("Loss Details",style: h1,),

            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Is Vehicle Reported to Garage?", style: font_l),
                            SizedBox(width: 40 ,),
                            Row(
                              children: [
                                Radio<String>(
                                  value: 'yes',
                                  groupValue: _repoted_garage,
                                  onChanged: (value) {
                                    setState(() {
                                      _repoted_garage = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),

                                Text("Yes"),
                                SizedBox(width: 15,),
                                Radio<String>(
                                  value: 'no',
                                  groupValue: _repoted_garage,
                                  onChanged: (value) {
                                    setState(() {
                                      _repoted_garage = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),
                                Text("No"),
                              ],
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
                            Text("Vehicle Reported Date", style: font_l),
                            Row(
                              children: [
                                Container(
                                  width: me.width * .18,
                                  height: 30,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Color(0xffD9D9D9))),
                                  child: v_r_date == null
                                      ? Text("Select Date", style: font_b1)
                                      : Text(
                                    DateFormat('dd-MMM-yyyy').format(v_r_date!),
                                    style: font_b1,
                                  ),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () async {
                                    if (v_r_date == null) {
                                      v_r_date = await _selectSelectDate(context, DateTime.now());
                                      setState(() {});
                                    } else {
                                      v_r_date = await _selectSelectDate(context, v_r_date!);
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
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Survey Date", style: font_l),
                            Row(
                              children: [
                                Container(
                                  width: me.width * .18,
                                  height: 30,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Color(0xffD9D9D9))),
                                  child: survey_date == null
                                      ? Text("Select Date", style: font_b1)
                                      : Text(
                                    DateFormat('dd-MMM-yyyy').format(survey_date!),
                                    style: font_b1,
                                  ),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () async {
                                    if (survey_date == null) {
                                      survey_date = await _selectSelectDate(context, DateTime.now());
                                      setState(() {});
                                    } else {
                                      survey_date = await _selectSelectDate(context, survey_date!);
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
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Estimated Loss (Rs.)",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                border: Border.all(
                                  color: Color(0xffCFCFCF)
                                )
                              ),

                              child: TextFormField(
                                controller: _esti_loss,
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.end,

                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: '',
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
                      ),
                      size(),
                      Container(
                        width: me.width * .4,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Impact of loss",style: font_l,),
                            Container(
                              width: me.width * .205,
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
                                  value: impect_loss,
                                  onChanged: (String? value) {
                                    setState(() {
                                      impect_loss = value;
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
                            Text("Event",style: font_l,),
                            Container(
                              width: me.width * .205,
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
                                  value: event,
                                  onChanged: (String? value) {
                                    setState(() {
                                      event = value;
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
                            Text("Settlement Type",style: font_l,),
                            Container(
                              width: me.width * .205,
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
                                  value: setalment_type,
                                  onChanged: (String? value) {
                                    setState(() {
                                      setalment_type = value;
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
                            Text("Work-order Date", style: font_l),
                            Row(
                              children: [
                                Container(
                                  width: me.width * .18,
                                  height: 30,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Color(0xffD9D9D9))),
                                  child: w_o_date == null
                                      ? Text("Select Date", style: font_b1)
                                      : Text(
                                    DateFormat('dd-MMM-yyyy').format(w_o_date!),
                                    style: font_b1,
                                  ),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () async {
                                    if (w_o_date == null) {
                                      w_o_date = await _selectSelectDate(context, DateTime.now());
                                      setState(() {});
                                    } else {
                                      w_o_date = await _selectSelectDate(context, w_o_date!);
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
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Odometer Reading ",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffCFCFCF)
                                  )
                              ),

                              child: TextFormField(
                                controller: odp_reading,
                                cursorColor: Colors.grey,


                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: '',
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
                      ),
                      size(),
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Is Vehicle Reported to Garage?", style: font_l),
                            SizedBox(width: 40 ,),
                            Row(
                              children: [
                                Radio<String>(
                                  value: 'yes',
                                  groupValue: _o_insured,
                                  onChanged: (value) {
                                    setState(() {
                                      _o_insured = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),

                                Text("Yes"),
                                SizedBox(width: 15,),
                                Radio<String>(
                                  value: 'no',
                                  groupValue: _o_insured,
                                  onChanged: (value) {
                                    setState(() {
                                      _o_insured = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),
                                Text("No"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: me.width * .08,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,

                    children: [
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Secondary type of loss ",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffCFCFCF)
                                  )
                              ),

                              child: TextFormField(
                                controller: s_type_loss,
                                cursorColor: Colors.grey,


                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: '',
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
                      ),
                      size(),
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Vehicle Reported Date",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,


                              child: Row(
                                children: [
                                  Text("HH",style:font_l),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: me.width * .06,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffCFCFCF)
                                        )
                                    ),

                                    child: TextFormField(
                                      controller: vr_date_HH,
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(

                                        hintText: '',
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
                                  SizedBox(width: 15,),
                                  Text("MM",style: font_l,),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: me.width * .06,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffCFCFCF)
                                        )
                                    ),

                                    child: TextFormField(
                                      controller: vr_date_MM,
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(

                                        hintText: '',
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
                            Text("Survey Date",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,


                              child: Row(
                                children: [
                                  Text("HH",style:font_l),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: me.width * .06,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffCFCFCF)
                                        )
                                    ),

                                    child: TextFormField(
                                      controller: sur_date_HH,
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(

                                        hintText: '',
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
                                  SizedBox(width: 15,),
                                  Text("MM",style: font_l,),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: me.width * .06,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffCFCFCF)
                                        )
                                    ),

                                    child: TextFormField(
                                      controller: sur_date_MM,
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(

                                        hintText: '',
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
                            Text("Approx Liability",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffCFCFCF)
                                  )
                              ),

                              child: TextFormField(
                                controller: liabllity,
                                cursorColor: Colors.grey,


                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: '',
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
                      ),
                      size(),
                      Container (
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Catastrophic Event of loss", style: font_l),
                            SizedBox(width: 40 ,),
                            Row(
                              children: [
                                Radio<String>(
                                  value: 'yes',
                                  groupValue: _Catastrophic,
                                  onChanged: (value) {
                                    setState(() {
                                      _Catastrophic = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),

                                Text("Yes"),
                                SizedBox(width: 15,),
                                Radio<String>(
                                  value: 'no',
                                  groupValue: _Catastrophic,
                                  onChanged: (value) {
                                    setState(() {
                                      _Catastrophic = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),
                                Text("No"),
                              ],
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
                            Text("Default Reserve Amount (Rs.)",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffCFCFCF)
                                  )
                              ),

                              child: TextFormField(
                                controller: def_res_amount,
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.end,

                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: '',
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
                      ),
                      size(),
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("IDV (Rs.)",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  border: Border.all(
                                      color: Color(0xffCFCFCF)
                                  )
                              ),

                              child: TextFormField(
                                controller: IDV,
                                cursorColor: Colors.grey,
                                textAlign: TextAlign.end,

                                style: TextStyle(fontSize: 12),
                                decoration: InputDecoration(
                                  hintText: '',
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
                      ),
                      size(),
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Work-order Time",style: font_l,),
                            Container(
                              width: me.width * .205,
                              height: 30,


                              child: Row(
                                children: [
                                  Text("HH",style:font_l),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: me.width * .06,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffCFCFCF)
                                        )
                                    ),

                                    child: TextFormField(
                                      controller: wo_date_HH,
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(

                                        hintText: '',
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
                                  SizedBox(width: 15,),
                                  Text("MM",style: font_l,),
                                  SizedBox(width: 5,),
                                  Container(
                                    width: me.width * .06,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        border: Border.all(
                                            color: Color(0xffCFCFCF)
                                        )
                                    ),

                                    child: TextFormField(
                                      controller: wo_date_MM,
                                      cursorColor: Colors.grey,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(fontSize: 12),
                                      decoration: InputDecoration(

                                        hintText: '',
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
                            Text("Vehicle Reported Date", style: font_l),
                            Row(
                              children: [
                                Container(
                                  width: me.width * .18,
                                  height: 30,
                                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Color(0xffD9D9D9))),
                                  child: tentive_repaire == null
                                      ? Text("Select Date", style: font_b1)
                                      : Text(
                                    DateFormat('dd-MMM-yyyy').format(tentive_repaire!),
                                    style: font_b1,
                                  ),
                                ),
                                SizedBox(width: 5),
                                InkWell(
                                  onTap: () async {
                                    if (tentive_repaire == null) {
                                      tentive_repaire = await _selectSelectDate(context, DateTime.now());
                                      setState(() {});
                                    } else {
                                      tentive_repaire = await _selectSelectDate(context, tentive_repaire!);
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
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Is pre-inspection for this\nvehicle done by you?", style: font_l),
                            SizedBox(width: 50 ,),
                            Row(
                              children: [
                                Radio<String>(
                                  value: 'yes',
                                  groupValue: _vehical_done,
                                  onChanged: (value) {
                                    setState(() {
                                      _vehical_done = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),

                                Text("Yes"),
                                SizedBox(width: 15,),
                                Radio<String>(
                                  value: 'no',
                                  groupValue: _vehical_done,
                                  onChanged: (value) {
                                    setState(() {
                                      _vehical_done = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),
                                Text("No"),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  gradient: g1,
                  borderRadius: BorderRadius.circular(5)
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 40,
              width: me.width,
              color: Color(0xffD9D9D9),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: Text("Customer Details",style: h1,),

            ),
            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Customer Conracted", style: font_l),
                            SizedBox(width: 80 ,),
                            Row(
                              children: [
                                Radio<String>(
                                  value: 'yes',
                                  groupValue: customer_Conracted,
                                  onChanged: (value) {
                                    setState(() {
                                      customer_Conracted = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),

                                Text("Yes"),
                                SizedBox(width: 15,),
                                Radio<String>(
                                  value: 'no',
                                  groupValue: customer_Conracted,
                                  onChanged: (value) {
                                    setState(() {
                                      customer_Conracted = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),
                                Text("No"),
                              ],
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
                            Text("Event",style: font_l,),
                            Container(
                              width: me.width * .205,
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
                                  value: impect_loss,
                                  onChanged: (String? value) {
                                    setState(() {
                                      impect_loss = value;
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
                  ),
                  SizedBox(width: me.width * .08,),
                  Column(
                    children: [
                      Container(
                        width: me.width * .4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Has the Claim Process been\nexplained to the customer", style: font_l),
                            SizedBox(width: 40 ,),
                            Row(
                              children: [
                                Radio<String>(
                                  value: 'yes',
                                  groupValue: explain_customer,
                                  onChanged: (value) {
                                    setState(() {
                                      explain_customer = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),

                                Text("Yes"),
                                SizedBox(width: 15,),
                                Radio<String>(
                                  value: 'no',
                                  groupValue: explain_customer,
                                  onChanged: (value) {
                                    setState(() {
                                      explain_customer = value!;
                                    });
                                  },
                                ),
                                SizedBox(width: 5,),
                                Text("No"),
                              ],
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
                            Text("Event",style: font_l,),
                            Container(
                              width: me.width * .205,
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
                                  value: impect_loss,
                                  onChanged: (String? value) {
                                    setState(() {
                                      impect_loss = value;
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
                  ),

                ],
              ),
            ),
            size(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: me.width * .1,
                      child: Text("Remark",style: font_l,maxLines: 7,overflow: TextOverflow.ellipsis,)),
                  SizedBox(width: me.width * .08,),
                  Container(
                      width: me.width * .6,
                      child: TextField(
                        controller: remark,
                        style: TextStyle(
                            color: Colors.black
                        ),
                        cursorColor: Colors.grey,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Enter a Remark',
                          hintStyle:
                          TextStyle(fontSize: 12, color: Colors.grey),

                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color:
                              Colors.grey,
                            ),),

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
                      )
                  ),
                ],
              ),
            ),
            size(),
            Container(
              width: me.width * .4,
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Customer Backlisted", style: font_l),
                  SizedBox(width: 80 ,),
                  Row(
                    children: [
                      Radio<String>(
                        value: 'yes',
                        groupValue: black_list,
                        onChanged: (value) {
                          setState(() {
                            black_list = value!;
                          });
                        },
                      ),
                      SizedBox(width: 5,),

                      Text("Yes"),
                      SizedBox(width: 15,),
                      Radio<String>(
                        value: 'no',
                        groupValue: black_list,
                        onChanged: (value) {
                          setState(() {
                            black_list = value!;
                          });
                        },
                      ),
                      SizedBox(width: 5,),
                      Text("No"),
                    ],
                  ),
                ],
              ),
            ),
            size(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: me.width * .1,
                      child: Text("Backlisted Remarks",style: font_l,maxLines: 7,overflow: TextOverflow.ellipsis,)),
                  SizedBox(width: me.width * .08,),
                  Container(
                      width: me.width * .6,
                      child: TextField(
                        controller: black_remark,
                        style: TextStyle(
                            color: Colors.black
                        ),
                        cursorColor: Colors.grey,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Enter a Remark',
                          hintStyle:
                          TextStyle(fontSize: 12, color: Colors.grey),

                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),

                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5),
                            borderSide: BorderSide(
                              color:
                              Colors.grey,
                            ),),

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
                      )
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              height: 30,
              width: 80,
              decoration: BoxDecoration(
                  gradient: g1,
                  borderRadius: BorderRadius.circular(5)
              ),
            ),
            SizedBox(height: 500,)

          ],
        ),
      ),
    );
  }
}
