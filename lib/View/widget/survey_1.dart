import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:zerrins1/utils/text_feild.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../utils/color.dart';
import '../../utils/fonts.dart';
import '../../utils/table_containet.dart';

class survey_1 extends StatefulWidget {
  const survey_1({super.key});

  @override
  State<survey_1> createState() => _survey_1State();
}

class _survey_1State extends State<survey_1> {
  bool abc = true;
  bool servey_details = true;
  bool pan_details = true;
  bool driver_details = true;
  bool loss_details = true;
  bool l1 = true;
  bool passenger_details = true;
  bool fir = true;
  bool servey_expense = true;

  //Servey Details
  String as_per_servey = "yes";
  TextEditingController idv = TextEditingController();
  TextEditingController electronoic_idv = TextEditingController();
  TextEditingController cng_idv = TextEditingController();
  TextEditingController cable_capacity = TextEditingController();
  TextEditingController seating_capacity = TextEditingController();
  TextEditingController gvw = TextEditingController();
  TextEditingController complesary_excuse = TextEditingController();
  TextEditingController voluntary = TextEditingController();
  TextEditingController imposed_Excess = TextEditingController();
  TextEditingController loss_secription = TextEditingController();
  TextEditingController ncb = TextEditingController();
  TextEditingController year_of_mani = TextEditingController();
  TextEditingController chassis_no = TextEditingController();
  TextEditingController engine_no = TextEditingController();
  TextEditingController r1 = TextEditingController();
  TextEditingController r2 = TextEditingController();
  TextEditingController r3 = TextEditingController();
  TextEditingController r4 = TextEditingController();
  String? make;
  String? model;
  String hypothecation = "yes";
  String whether = "yes";

  //pan details
  String from_60 = "yes";
  TextEditingController pan_number = TextEditingController();

  //Vehical Details
  DateTime? Registration_data;
  String park = "yes";
  String? vehical_color;
  String? type_paint;
  String? engine_fule;
  TextEditingController avrage = TextEditingController();

  //driver details
  String skip_driver_detailsd = "yes";
  TextEditingController rto_authority = TextEditingController();
  TextEditingController driver_name = TextEditingController();
  String? driver_relationship;
  DateTime? dl_issue;
  String alohol = "yes";
  String? gender;
  TextEditingController dl_no = TextEditingController();
  TextEditingController reason_for_change = TextEditingController();
  DateTime? dateof_birth;
  DateTime? expirey_date;
  String? occuption;
  String? type_of_license;
  TextEditingController badge_name = TextEditingController();

  //loss Details
  TextEditingController case_of_loss = TextEditingController();
  TextEditingController damage = TextEditingController();
  String? ownership;
  TextEditingController reson_for_change = TextEditingController();

  //survey Exoense
  DateTime? repoet_gernrate_date;
  String gst_appilicable = "yes";
  String name_rglic = "yes";
  String? from_state;
  TextEditingController sac_code = TextEditingController();
  TextEditingController professional_fee = TextEditingController();
  TextEditingController invoic_number = TextEditingController();
  TextEditingController gstin_surveyar = TextEditingController();
  String? rgi_gstin;
  String? to_state;
  TextEditingController local_charge = TextEditingController();

  String charge_yes = "yes";
  TextEditingController cd_charge = TextEditingController();

  String? from1;
  String? to1;
  TextEditingController km = TextEditingController();
  TextEditingController rate = TextEditingController();


  //last
  String gst_applicable = "Entire Amount";
  TextEditingController cgst=TextEditingController();
  TextEditingController igst=TextEditingController();
  TextEditingController gstammount=TextEditingController();
  TextEditingController total_amount=TextEditingController();
  TextEditingController total_amount1=TextEditingController();
  TextEditingController sgst=TextEditingController();
  TextEditingController utgst=TextEditingController();
  TextEditingController withgst=TextEditingController();


  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  final List<String> zender = [
    'Male',
    'Female',
    'both',
  ];
  Future<DateTime?> _selectSelectDate(
      BuildContext context, DateTime abc) async {
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

  @override
  Widget build(BuildContext context) {
    final me = MediaQuery.of(context).size;
    return Container(
      width: me.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: me.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        abc = true;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: abc ? Color(0xff149197) : Colors.white,
                          border: Border.all(color: Color(0xff0A484B))),
                      child: Center(
                          child: Text(
                        "Survey Details",
                        style: abc ? c1 : font_b1,
                      )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        abc = false;
                      });
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          color: abc ? Colors.white : Color(0xff149197),
                          border: Border.all(color: Color(0xff0A484B))),
                      child: Center(
                          child: Text(
                        "Survey Expense",
                        style: abc ? font_b1 : c1,
                      )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            abc
                ? Column(
                    children: [
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (servey_details == true) {
                                  setState(() {
                                    servey_details = false;
                                  });
                                } else {
                                  setState(() {
                                    servey_details = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: servey_details == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Servey Details",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      servey_details
                          ? Container(
                              child: Column(
                                children: [
                                  Container(
                                    width: me.width * .9,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 60,
                                          width: me.width * .3,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDBF0F9),
                                              border: Border.all(width: .1)),
                                          child: Center(
                                            child: Text(
                                              "Particulars as Per Policy",
                                              style: bold,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 60,
                                          width: me.width * .4,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDBF0F9),
                                              border: Border.all(width: .1)),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Particulara As Per Servey",
                                                style: bold,
                                              ),
                                              SingleChildScrollView(
                                                scrollDirection:
                                                    Axis.horizontal,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "Same as Policy",
                                                      style: font_b1,
                                                    ),
                                                    Row(
                                                      children: [
                                                        Radio<String>(
                                                          value: 'yes',
                                                          groupValue:
                                                              as_per_servey,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              as_per_servey =
                                                                  value!;
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
                                                          groupValue:
                                                              as_per_servey,
                                                          onChanged: (value) {
                                                            setState(() {
                                                              as_per_servey =
                                                                  value!;
                                                            });
                                                          },
                                                        ),
                                                        SizedBox(
                                                          width: 5,
                                                        ),
                                                        Text("No"),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 60,
                                          width: me.width * .198,
                                          decoration: BoxDecoration(
                                              color: Color(0xffDBF0F9),
                                              border: Border.all(width: .1)),
                                          child: Center(
                                            child: Text(
                                              "Remarks",
                                              textAlign: TextAlign.center,
                                              style: bold,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  table_Continer("IDV (Rs.): ", "355579.00", idv, true, context,),
                                  table_Continer("Electronic and Electric accessories IDV (Rs.):", " 9.00", electronoic_idv, false, context,),
                                  table_Continer("CNG Endorsement IDV (Rs.): ", "9.00", electronoic_idv, true, context,),
                                  Container(
                                    width: me.width * .9,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .3,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Make: ",
                                                  style: font_b1,
                                                ),
                                                Text(
                                                  "Hyundai",
                                                  style: bold,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 10,
                                                top: 5,
                                                bottom: 5,
                                                right: 100),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xffCFCFCF),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton2<String>(
                                                isExpanded: true,
                                                hint: Text(
                                                  'Select ',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Theme.of(context)
                                                        .hintColor,
                                                  ),
                                                ),
                                                items: items
                                                    .map((String item) =>
                                                        DropdownMenuItem<
                                                            String>(
                                                          value: item,
                                                          child: Text(
                                                            item,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ))
                                                    .toList(),
                                                value: make,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    make = value;
                                                  });
                                                },
                                                buttonStyleData:
                                                    const ButtonStyleData(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16),
                                                  height: 40,
                                                  width: 140,
                                                ),
                                                menuItemStyleData:
                                                    const MenuItemStyleData(
                                                  height: 40,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .198,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: me.width * .9,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .3,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Model: ",
                                                  style: font_b1,
                                                ),
                                                Text(
                                                  "Elite I20",
                                                  style: bold,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: Container(
                                            margin: EdgeInsets.only(
                                                left: 10,
                                                top: 5,
                                                bottom: 5,
                                                right: 100),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Color(0xffCFCFCF),
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(2)),
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton2<String>(
                                                isExpanded: true,
                                                hint: Text(
                                                  'Select ',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Theme.of(context)
                                                        .hintColor,
                                                  ),
                                                ),
                                                items: items
                                                    .map((String item) =>
                                                        DropdownMenuItem<
                                                            String>(
                                                          value: item,
                                                          child: Text(
                                                            item,
                                                            style:
                                                                const TextStyle(
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ))
                                                    .toList(),
                                                value: model,
                                                onChanged: (String? value) {
                                                  setState(() {
                                                    model = value;
                                                  });
                                                },
                                                buttonStyleData:
                                                    const ButtonStyleData(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 16),
                                                  height: 40,
                                                  width: 140,
                                                ),
                                                menuItemStyleData:
                                                    const MenuItemStyleData(
                                                  height: 40,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .198,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  table_Continer("Cubic Capacity: ", "1197", cable_capacity, false,context,),
                                  table_Continer("Seating Capacity: ", "1197", seating_capacity, true, context,),
                                  table_Continer("GVW: ", "1197", gvw, false, context,),
                                  table_Continer("Compulsory Excuses (Rs.): ", "1197", complesary_excuse,true, context,),
                                  table_Continer("Voluntary (Rs.):  ", "1197", voluntary, false, context,),
                                  table_Continer("Imposed Excess (Rs.):  ", "1197", imposed_Excess, true, context,),
                                  Container(
                                    width: me.width * .9,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .3,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Hypothecation: ",
                                                  style: font_b1,
                                                ),
                                                Text(
                                                  "True",
                                                  style: bold,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .4,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Radio<String>(
                                                  value: 'yes',
                                                  groupValue: hypothecation,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      hypothecation = value!;
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
                                                  groupValue: hypothecation,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      hypothecation = value!;
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
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .198,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  table_Continer("Loss Description: ","AS PER CLAIM FORM", loss_secription, true, context,),
                                  table_Continer("NCB: ", "1640", ncb, false, context,),
                                  table_Continer("Year of Manufacturing: ", "2017", year_of_mani, true, context,),
                                  table_Continer("Chassis No.: ", "WRHTEJR_JYRJYRJ", chassis_no, false, context,),
                                  Container(
                                    width: me.width * .9,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .3,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Registration No.: ",
                                                  style: font_b1,
                                                ),
                                                Text(
                                                  "GJ_04_123",
                                                  style: bold,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 5),
                                          height: 40,
                                          width: me.width * .4,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Container(
                                                  height: 30,
                                                  color: Colors.white,
                                                  width: me.width * .06,
                                                  child: TextFormField(
                                                    controller: r1,
                                                    cursorColor: Colors.grey,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15,
                                                              vertical: 5),
                                                      disabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  height: 30,
                                                  color: Colors.white,
                                                  width: me.width * .06,
                                                  child: TextFormField(
                                                    controller: r2,
                                                    cursorColor: Colors.grey,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15,
                                                              vertical: 5),
                                                      disabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  height: 30,
                                                  color: Colors.white,
                                                  width: me.width * .06,
                                                  child: TextFormField(
                                                    controller: r3,
                                                    cursorColor: Colors.grey,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15,
                                                              vertical: 5),
                                                      disabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Container(
                                                  height: 30,
                                                  color: Colors.white,
                                                  width: me.width * .06,
                                                  child: TextFormField(
                                                    controller: r4,
                                                    cursorColor: Colors.grey,
                                                    style:
                                                        TextStyle(fontSize: 12),
                                                    decoration: InputDecoration(
                                                      contentPadding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 15,
                                                              vertical: 5),
                                                      disabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2),
                                                        borderSide: BorderSide(
                                                            color: Colors.grey),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .198,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                        ),
                                      ],
                                    ),
                                  ),
                                  table_Continer("Engine No.: ", "AS PER CLAIM FORM", engine_no, false, context,),
                                  Container(
                                    width: me.width * .9,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .3,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Text(
                                                  "Whether This Policy is Sourced by same Dealer?",
                                                  style: font_b1,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .4,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                          child: SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            child: Row(
                                              children: [
                                                Radio<String>(
                                                  value: 'yes',
                                                  groupValue: hypothecation,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      hypothecation = value!;
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
                                                  groupValue: hypothecation,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      hypothecation = value!;
                                                    });
                                                  },
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("No"),
                                                SizedBox(
                                                  width: 15,
                                                ),
                                                Radio<String>(
                                                  value: 'Don’t Know  ',
                                                  groupValue: hypothecation,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      hypothecation = value!;
                                                    });
                                                  },
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text("Don’t Know"),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10),
                                          height: 40,
                                          width: me.width * .198,
                                          decoration: BoxDecoration(
                                              color: Color(0xffF5F5F5),
                                              border: Border.all(
                                                  width: .1,
                                                  color: Color(0xff999999))),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (pan_details == true) {
                                  setState(() {
                                    pan_details = false;
                                  });
                                } else {
                                  setState(() {
                                    pan_details = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: pan_details == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Pan Details Form 60",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      pan_details
                          ? Container(
                              width: me.width,
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  textfeild(pan_number, context, "PAN Number  "),
                                  size(),
                                  Container(
                                    width: me.width * .4,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Form 60 Yes/No",
                                          style: font_l,
                                        ),
                                        Container(
                                          width: me.width * .22,
                                          height: 30,
                                          child: Row(
                                            children: [
                                              Radio<String>(
                                                value: 'yes',
                                                groupValue: from_60,
                                                onChanged: (value) {
                                                  setState(() {
                                                    from_60 = value!;
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
                                                groupValue: from_60,
                                                onChanged: (value) {
                                                  setState(() {
                                                    from_60 = value!;
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
                                  )
                                ],
                              ),
                            )
                          : Container(),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (driver_details == true) {
                                  setState(() {
                                    driver_details = false;
                                  });
                                } else {
                                  setState(() {
                                    driver_details = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: driver_details == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Vehicle Details",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      driver_details
                          ? Container(
                              width: me.width,
                              padding: EdgeInsets.symmetric(horizontal: 40),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: me.width * .4,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Registration Date",
                                                style: font_l),
                                            Row(
                                              children: [
                                                Container(
                                                  width: me.width * .19,
                                                  height: 30,
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 10,
                                                      vertical: 4),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      border: Border.all(
                                                          color: Color(
                                                              0xffD9D9D9))),
                                                  child:
                                                      Registration_data == null
                                                          ? Text("Select Date",
                                                              style: font_b1)
                                                          : Text(
                                                              DateFormat(
                                                                      'dd-MMM-yyyy')
                                                                  .format(
                                                                      Registration_data!),
                                                              style: font_b1,
                                                            ),
                                                ),
                                                SizedBox(width: 5),
                                                InkWell(
                                                  onTap: () async {
                                                    if (Registration_data ==
                                                        null) {
                                                      Registration_data =
                                                          await _selectSelectDate(
                                                              context,
                                                              DateTime.now());
                                                      setState(() {});
                                                    } else {
                                                      Registration_data =
                                                          await _selectSelectDate(
                                                              context,
                                                              Registration_data!);
                                                      setState(() {});
                                                    }
                                                  },
                                                  child: Image.asset(
                                                      "assets/img_1.png",
                                                      height: 30,
                                                      width: 30),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Colour of the vehicle",
                                              style: font_l,
                                            ),
                                            Container(
                                              width: me.width * .22,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xffCFCFCF),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton2<String>(
                                                  isExpanded: true,
                                                  hint: Text(
                                                    'Select ',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Theme.of(context)
                                                          .hintColor,
                                                    ),
                                                  ),
                                                  items: items
                                                      .map((String item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: vehical_color,
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      vehical_color = value;
                                                    });
                                                  },
                                                  buttonStyleData:
                                                      const ButtonStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    height: 40,
                                                    width: 140,
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
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
                                              "Type of Paint",
                                              style: font_l,
                                            ),
                                            Container(
                                              width: me.width * .22,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xffCFCFCF),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton2<String>(
                                                  isExpanded: true,
                                                  hint: Text(
                                                    'Select ',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Theme.of(context)
                                                          .hintColor,
                                                    ),
                                                  ),
                                                  items: items
                                                      .map((String item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: type_paint,
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      type_paint = value;
                                                    });
                                                  },
                                                  buttonStyleData:
                                                      const ButtonStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    height: 40,
                                                    width: 140,
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
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
                                              "Engine Fuel Systeam",
                                              style: font_l,
                                            ),
                                            Container(
                                              width: me.width * .22,
                                              height: 30,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xffCFCFCF),
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(5)),
                                              child:
                                                  DropdownButtonHideUnderline(
                                                child: DropdownButton2<String>(
                                                  isExpanded: true,
                                                  hint: Text(
                                                    'Select ',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      color: Theme.of(context)
                                                          .hintColor,
                                                    ),
                                                  ),
                                                  items: items
                                                      .map((String item) =>
                                                          DropdownMenuItem<
                                                              String>(
                                                            value: item,
                                                            child: Text(
                                                              item,
                                                              style:
                                                                  const TextStyle(
                                                                fontSize: 14,
                                                              ),
                                                            ),
                                                          ))
                                                      .toList(),
                                                  value: engine_fule,
                                                  onChanged: (String? value) {
                                                    setState(() {
                                                      engine_fule = value;
                                                    });
                                                  },
                                                  buttonStyleData:
                                                      const ButtonStyleData(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 16),
                                                    height: 40,
                                                    width: 140,
                                                  ),
                                                  menuItemStyleData:
                                                      const MenuItemStyleData(
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
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      textfeild(avrage, context, "Average ruing per day"),
                                      size(),
                                      Container(
                                        width: me.width * .4,
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Vehicle Parked",
                                              style: font_l,
                                            ),
                                            Container(
                                              width: me.width * .22,
                                              height: 30,
                                              child: Row(
                                                children: [
                                                  Radio<String>(
                                                    value: 'yes',
                                                    groupValue: park,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        park = value!;
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
                                                    groupValue: park,
                                                    onChanged: (value) {
                                                      setState(() {
                                                        park = value!;
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
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (loss_details == true) {
                                  setState(() {
                                    loss_details = false;
                                  });
                                } else {
                                  setState(() {
                                    loss_details = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: loss_details == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Drivers Details",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      loss_details
                          ? Container(
                              width: me.width,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: me.width * .3,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: me.width * .4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Form 60 Yes/No",
                                                  style: font_l,
                                                ),
                                                Container(
                                                  width: me.width * .18,
                                                  height: 30,
                                                  child: Row(
                                                    children: [
                                                      Radio<String>(
                                                        value: 'yes',
                                                        groupValue: from_60,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            from_60 = value!;
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
                                                        groupValue: from_60,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            from_60 = value!;
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
                                          textfeild2(rto_authority, context, "RTO Authority"),
                                          size(),
                                          textfeild2(driver_name, context, "Driver Name"),
                                          size(),
                                          Container(
                                            width: me.width * .4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Driver Relationship",
                                                  style: font_l,
                                                ),
                                                Container(
                                                  width: me.width * .18,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            Color(0xffCFCFCF),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child:
                                                        DropdownButton2<String>(
                                                      isExpanded: true,
                                                      hint: Text(
                                                        'Select ',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                        ),
                                                      ),
                                                      items: items
                                                          .map((String item) =>
                                                              DropdownMenuItem<
                                                                  String>(
                                                                value: item,
                                                                child: Text(
                                                                  item,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ))
                                                          .toList(),
                                                      value:
                                                          driver_relationship,
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          driver_relationship =
                                                              value;
                                                        });
                                                      },
                                                      buttonStyleData:
                                                          const ButtonStyleData(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 16),
                                                        height: 40,
                                                        width: 140,
                                                      ),
                                                      menuItemStyleData:
                                                          const MenuItemStyleData(
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
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("DL Issue Date",
                                                    style: font_l),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: me.width * .155,
                                                      height: 30,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 4),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD9D9D9))),
                                                      child: dl_issue == null
                                                          ? Text("Select Date",
                                                              style: font_b1)
                                                          : Text(
                                                              DateFormat(
                                                                      'dd-MMM-yyyy')
                                                                  .format(
                                                                      dl_issue!),
                                                              style: font_b1,
                                                            ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    InkWell(
                                                      onTap: () async {
                                                        if (dl_issue == null) {
                                                          dl_issue =
                                                              await _selectSelectDate(
                                                                  context,
                                                                  DateTime
                                                                      .now());
                                                          setState(() {});
                                                        } else {
                                                          dl_issue =
                                                              await _selectSelectDate(
                                                                  context,
                                                                  dl_issue!);
                                                          setState(() {});
                                                        }
                                                      },
                                                      child: Image.asset(
                                                          "assets/img_1.png",
                                                          height: 30,
                                                          width: 30),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Driver was under\ninfluence of alcohol",
                                                  style: font_l,
                                                ),
                                                Container(
                                                  width: me.width * .18,
                                                  height: 30,
                                                  child: Row(
                                                    children: [
                                                      Radio<String>(
                                                        value: 'yes',
                                                        groupValue: alohol,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            alohol = value!;
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
                                                        groupValue: alohol,
                                                        onChanged: (value) {
                                                          setState(() {
                                                            alohol = value!;
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
                                          Container(
                                            width: me.width * .4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Gender",
                                                  style: font_l,
                                                ),
                                                Container(
                                                  width: me.width * .18,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            Color(0xffCFCFCF),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child:
                                                        DropdownButton2<String>(
                                                      isExpanded: true,
                                                      hint: Text(
                                                        'Select ',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                        ),
                                                      ),
                                                      items: zender
                                                          .map((String item) =>
                                                              DropdownMenuItem<
                                                                  String>(
                                                                value: item,
                                                                child: Text(
                                                                  item,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ))
                                                          .toList(),
                                                      value: gender,
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          gender = value;
                                                        });
                                                      },
                                                      buttonStyleData:
                                                          const ButtonStyleData(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 16),
                                                        height: 40,
                                                        width: 140,
                                                      ),
                                                      menuItemStyleData:
                                                          const MenuItemStyleData(
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
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: me.width * .3,
                                      child: Column(
                                        children: [
                                          textfeild2(dl_no, context, "DL No."),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Container(
                                                  width: me.width * .18,
                                                  child: Text(
                                                    "Fetch Real-Time DL Details",
                                                    style: orange_fonr,
                                                  )),
                                            ],
                                          ),
                                          size(),
                                          SizedBox(
                                            height: 18,
                                          ),
                                          textfeild2(dl_no, context, "DL No."),
                                          size(),
                                          Container(
                                            width: me.width * .4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("Date of birth",
                                                    style: font_l),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: me.width * .155,
                                                      height: 30,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 4),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD9D9D9))),
                                                      child: dateof_birth ==
                                                              null
                                                          ? Text("Select Date",
                                                              style: font_b1)
                                                          : Text(
                                                              DateFormat(
                                                                      'dd-MMM-yyyy')
                                                                  .format(
                                                                      dateof_birth!),
                                                              style: font_b1,
                                                            ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    InkWell(
                                                      onTap: () async {
                                                        if (dateof_birth ==
                                                            null) {
                                                          dateof_birth =
                                                              await _selectSelectDate(
                                                                  context,
                                                                  DateTime
                                                                      .now());
                                                          setState(() {});
                                                        } else {
                                                          dateof_birth =
                                                              await _selectSelectDate(
                                                                  context,
                                                                  dateof_birth!);
                                                          setState(() {});
                                                        }
                                                      },
                                                      child: Image.asset(
                                                          "assets/img_1.png",
                                                          height: 30,
                                                          width: 30),
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("DL Expiry Date",
                                                    style: font_l),
                                                Row(
                                                  children: [
                                                    Container(
                                                      width: me.width * .155,
                                                      height: 30,
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 10,
                                                              vertical: 4),
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(5),
                                                          border: Border.all(
                                                              color: Color(
                                                                  0xffD9D9D9))),
                                                      child: expirey_date ==
                                                              null
                                                          ? Text("Select Date",
                                                              style: font_b1)
                                                          : Text(
                                                              DateFormat(
                                                                      'dd-MMM-yyyy')
                                                                  .format(
                                                                      expirey_date!),
                                                              style: font_b1,
                                                            ),
                                                    ),
                                                    SizedBox(width: 5),
                                                    InkWell(
                                                      onTap: () async {
                                                        if (expirey_date ==
                                                            null) {
                                                          expirey_date =
                                                              await _selectSelectDate(
                                                                  context,
                                                                  DateTime
                                                                      .now());
                                                          setState(() {});
                                                        } else {
                                                          expirey_date =
                                                              await _selectSelectDate(
                                                                  context,
                                                                  expirey_date!);
                                                          setState(() {});
                                                        }
                                                      },
                                                      child: Image.asset(
                                                          "assets/img_1.png",
                                                          height: 30,
                                                          width: 30),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(
                                            height: 75,
                                          ),
                                          Container(
                                            width: me.width * .4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Occupation",
                                                  style: font_l,
                                                ),
                                                Container(
                                                  width: me.width * .18,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            Color(0xffCFCFCF),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child:
                                                        DropdownButton2<String>(
                                                      isExpanded: true,
                                                      hint: Text(
                                                        'Select ',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                        ),
                                                      ),
                                                      items: items
                                                          .map((String item) =>
                                                              DropdownMenuItem<
                                                                  String>(
                                                                value: item,
                                                                child: Text(
                                                                  item,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ))
                                                          .toList(),
                                                      value: occuption,
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          occuption = value;
                                                        });
                                                      },
                                                      buttonStyleData:
                                                          const ButtonStyleData(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 16),
                                                        height: 40,
                                                        width: 140,
                                                      ),
                                                      menuItemStyleData:
                                                          const MenuItemStyleData(
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
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      width: me.width * .3,
                                      child: Column(
                                        children: [
                                          Container(
                                            width: me.width * .4,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Type of License",
                                                  style: font_l,
                                                ),
                                                Container(
                                                  width: me.width * .18,
                                                  height: 30,
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                        color:
                                                            Color(0xffCFCFCF),
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5)),
                                                  child:
                                                      DropdownButtonHideUnderline(
                                                    child:
                                                        DropdownButton2<String>(
                                                      isExpanded: true,
                                                      hint: Text(
                                                        'Select ',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          color:
                                                              Theme.of(context)
                                                                  .hintColor,
                                                        ),
                                                      ),
                                                      items: items
                                                          .map((String item) =>
                                                              DropdownMenuItem<
                                                                  String>(
                                                                value: item,
                                                                child: Text(
                                                                  item,
                                                                  style:
                                                                      const TextStyle(
                                                                    fontSize:
                                                                        14,
                                                                  ),
                                                                ),
                                                              ))
                                                          .toList(),
                                                      value: type_of_license,
                                                      onChanged:
                                                          (String? value) {
                                                        setState(() {
                                                          type_of_license =
                                                              value;
                                                        });
                                                      },
                                                      buttonStyleData:
                                                          const ButtonStyleData(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal: 16),
                                                        height: 40,
                                                        width: 140,
                                                      ),
                                                      menuItemStyleData:
                                                          const MenuItemStyleData(
                                                        height: 40,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          size(),
                                          textfeild2(badge_name, context, "Badge Name")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          : Container(),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (l1 == true) {
                                  setState(() {
                                    l1 = false;
                                  });
                                } else {
                                  setState(() {
                                    l1 = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: l1 == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Loss Details",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      l1
                          ? Container(
                              width: me.width,
                              padding: EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: me.width * .3,
                                          child: textfeild2(case_of_loss,
                                              context, "Case of loss")),
                                      Container(
                                          width: me.width * .3,
                                          child: textfeild2(damage, context,
                                              "Nature of Damage")),
                                      Container(
                                        width: me.width * .3,
                                        child: Container(
                                          width: me.width * .4,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "Ownership",
                                                style: font_l,
                                              ),
                                              Container(
                                                width: me.width * .18,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xffCFCFCF),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child:
                                                      DropdownButton2<String>(
                                                    isExpanded: true,
                                                    hint: Text(
                                                      'Select ',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Theme.of(context)
                                                            .hintColor,
                                                      ),
                                                    ),
                                                    items: items
                                                        .map((String item) =>
                                                            DropdownMenuItem<
                                                                String>(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                            ))
                                                        .toList(),
                                                    value: ownership,
                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        ownership = value;
                                                      });
                                                    },
                                                    buttonStyleData:
                                                        const ButtonStyleData(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 16),
                                                      height: 40,
                                                      width: 140,
                                                    ),
                                                    menuItemStyleData:
                                                        const MenuItemStyleData(
                                                      height: 40,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  size(),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: me.width * .1,
                                          child: Text(
                                            "Reason for change",
                                            style: font_l,
                                            maxLines: 7,
                                            overflow: TextOverflow.ellipsis,
                                          )),
                                      SizedBox(
                                        width: 25,
                                      ),
                                      Container(
                                          width: me.width * .7,
                                          color:
                                              Color(0xffD9D9D9).withOpacity(.2),
                                          child: TextField(
                                            controller: reason_for_change,
                                            style:
                                                TextStyle(color: Colors.black),
                                            cursorColor: Colors.grey,
                                            maxLines: 3,
                                            decoration: InputDecoration(
                                              hintText:
                                                  'Enter a Reason for change',
                                              hintStyle: TextStyle(
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                      horizontal: 15,
                                                      vertical: 15),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              disabledBorder:
                                                  OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: BorderSide(
                                                    color: Colors.grey),
                                              ),
                                            ),
                                          )),
                                    ],
                                  )
                                ],
                              ),
                            )
                          : Container(),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (passenger_details == true) {
                                  setState(() {
                                    passenger_details = false;
                                  });
                                } else {
                                  setState(() {
                                    passenger_details = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: l1 == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Passenger  Details",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (fir == true) {
                                  setState(() {
                                    fir = false;
                                  });
                                } else {
                                  setState(() {
                                    fir = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: l1 == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "FIR  Details",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Container(
                        height: 40,
                        width: me.width,
                        color: Color(0xffD9D9D9).withOpacity(.2),
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                if (servey_expense == true) {
                                  setState(() {
                                    servey_expense = false;
                                  });
                                } else {
                                  setState(() {
                                    servey_expense = true;
                                  });
                                }
                              },
                              child: Container(
                                height: 20,
                                width: 20,
                                color: Color(0xff1EB7EF),
                                child: Center(
                                  child: servey_expense == false
                                      ? Icon(
                                          Icons.add,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        )
                                      : Icon(
                                          Icons.remove,
                                          size: 15,
                                          color: Colors.white,
                                          weight: 10,
                                        ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Servey Expense",
                              style: h1,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 60),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  width: me.width * .4,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Invoice/Report Generated Date",
                                          style: font_l),
                                      Row(
                                        children: [
                                          Container(
                                            width: me.width * .18,
                                            height: 30,
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 4),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                border: Border.all(
                                                    color: Color(0xffD9D9D9))),
                                            child: repoet_gernrate_date == null
                                                ? Text("Select Date",
                                                    style: font_b1)
                                                : Text(
                                                    DateFormat('dd-MMM-yyyy')
                                                        .format(
                                                            repoet_gernrate_date!),
                                                    style: font_b1,
                                                  ),
                                          ),
                                          SizedBox(width: 5),
                                          InkWell(
                                            onTap: () async {
                                              if (repoet_gernrate_date ==
                                                  null) {
                                                repoet_gernrate_date =
                                                    await _selectSelectDate(
                                                        context,
                                                        DateTime.now());
                                                setState(() {});
                                              } else {
                                                repoet_gernrate_date =
                                                    await _selectSelectDate(
                                                        context,
                                                        repoet_gernrate_date!);
                                                setState(() {});
                                              }
                                            },
                                            child: Image.asset(
                                                "assets/img_1.png",
                                                height: 30,
                                                width: 30),
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Is GST Applicable",
                                        style: font_l,
                                      ),
                                      Container(
                                        width: me.width * .21,
                                        height: 30,
                                        child: Row(
                                          children: [
                                            Radio<String>(
                                              value: 'yes',
                                              groupValue: gst_appilicable,
                                              onChanged: (value) {
                                                setState(() {
                                                  gst_appilicable = value!;
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
                                              groupValue: gst_appilicable,
                                              onChanged: (value) {
                                                setState(() {
                                                  gst_appilicable = value!;
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
                                Container(
                                  width: me.width * .4,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Is Invoice in name of RGICL?",
                                        style: font_l,
                                      ),
                                      Container(
                                        width: me.width * .21,
                                        height: 30,
                                        child: Row(
                                          children: [
                                            Radio<String>(
                                              value: 'yes',
                                              groupValue: name_rglic,
                                              onChanged: (value) {
                                                setState(() {
                                                  name_rglic = value!;
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
                                              groupValue: name_rglic,
                                              onChanged: (value) {
                                                setState(() {
                                                  name_rglic = value!;
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
                                Container(
                                  width: me.width * .4,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "From State",
                                        style: font_l,
                                      ),
                                      Container(
                                        width: me.width * .22,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffCFCFCF),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2<String>(
                                            isExpanded: true,
                                            hint: Text(
                                              'Select ',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    Theme.of(context).hintColor,
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
                                            value: from_state,
                                            onChanged: (String? value) {
                                              setState(() {
                                                from_state = value;
                                              });
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                              height: 40,
                                              width: 140,
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
                                              height: 40,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                size(),
                                textfeild(sac_code, context, "SAC Code"),
                                size(),
                                textfeild(professional_fee, context, "Professional Free (Rs.)"),
                              ],
                            ),
                            Column(
                              children: [
                                textfeild(invoic_number, context, "Invoice Number"),
                                size(),
                                textfeild(gstin_surveyar, context, "GSTIN of serveyar"),
                                size(),
                                Container(
                                  width: me.width * .4,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "GSTIN of serveyar",
                                        style: font_l,
                                      ),
                                      Container(
                                        width: me.width * .22,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffCFCFCF),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2<String>(
                                            isExpanded: true,
                                            hint: Text(
                                              'Select ',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    Theme.of(context).hintColor,
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
                                            value: rgi_gstin,
                                            onChanged: (String? value) {
                                              setState(() {
                                                rgi_gstin = value;
                                              });
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                              height: 40,
                                              width: 140,
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
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
                                        "To State",
                                        style: font_l,
                                      ),
                                      Container(
                                        width: me.width * .22,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color(0xffCFCFCF),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                        child: DropdownButtonHideUnderline(
                                          child: DropdownButton2<String>(
                                            isExpanded: true,
                                            hint: Text(
                                              'Select ',
                                              style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    Theme.of(context).hintColor,
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
                                            value: to_state,
                                            onChanged: (String? value) {
                                              setState(() {
                                                to_state = value;
                                              });
                                            },
                                            buttonStyleData:
                                                const ButtonStyleData(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 16),
                                              height: 40,
                                              width: 140,
                                            ),
                                            menuItemStyleData:
                                                const MenuItemStyleData(
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
                                        "Local Conveyance Charges(Rs.)",
                                        style: font_l,
                                      ),
                                      Container(
                                        width: me.width * .2,
                                        height: 30,
                                        color:
                                            Color(0xffD9D9D9).withOpacity(.2),
                                        child: TextFormField(
                                          controller: local_charge,
                                          cursorColor: Colors.grey,
                                          style: TextStyle(fontSize: 12),
                                          decoration: InputDecoration(
                                            hintText:
                                                'Enter a Local Conveyance Charges(Rs.)',
                                            hintStyle: TextStyle(
                                                fontSize: 12,
                                                color: Colors.grey),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 15,
                                                    vertical: 5),
                                            disabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                color: Colors.grey,
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              borderSide: BorderSide(
                                                  color: Colors.grey),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 10),
                            child: DottedBorder(
                              color: Colors.black,
                              strokeWidth: 1,
                              child: Container(
                                width: me.width,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: me.width * .4,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "CD Charges applicable",
                                            style: font_l,
                                          ),
                                          Container(
                                            width: me.width * .21,
                                            height: 30,
                                            child: Row(
                                              children: [
                                                Radio<String>(
                                                  value: 'yes',
                                                  groupValue: charge_yes,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      charge_yes = value!;
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
                                                  groupValue: charge_yes,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      charge_yes = value!;
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
                                    textfeild(
                                        cd_charge, context, "CD Charges (Rs.)")
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            child: Text("CD Charges"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 10),
                            child: DottedBorder(
                              color: Colors.black,
                              strokeWidth: 1,
                              child: Container(
                                width: me.width,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                                "From ",
                                                style: font_l,
                                              ),
                                              Container(
                                                width: me.width * .22,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xffCFCFCF),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child:
                                                      DropdownButton2<String>(
                                                    isExpanded: true,
                                                    hint: Text(
                                                      'Select ',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Theme.of(context)
                                                            .hintColor,
                                                      ),
                                                    ),
                                                    items: items
                                                        .map((String item) =>
                                                            DropdownMenuItem<
                                                                String>(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                            ))
                                                        .toList(),
                                                    value: from1,
                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        from1 = value;
                                                      });
                                                    },
                                                    buttonStyleData:
                                                        const ButtonStyleData(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 16),
                                                      height: 40,
                                                      width: 140,
                                                    ),
                                                    menuItemStyleData:
                                                        const MenuItemStyleData(
                                                      height: 40,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        size(),
                                        textfeild(km, context, "KM")
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          width: me.width * .4,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                "To ",
                                                style: font_l,
                                              ),
                                              Container(
                                                width: me.width * .22,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Color(0xffCFCFCF),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5)),
                                                child:
                                                    DropdownButtonHideUnderline(
                                                  child:
                                                      DropdownButton2<String>(
                                                    isExpanded: true,
                                                    hint: Text(
                                                      'Select ',
                                                      style: TextStyle(
                                                        fontSize: 14,
                                                        color: Theme.of(context)
                                                            .hintColor,
                                                      ),
                                                    ),
                                                    items: items
                                                        .map((String item) =>
                                                            DropdownMenuItem<
                                                                String>(
                                                              value: item,
                                                              child: Text(
                                                                item,
                                                                style:
                                                                    const TextStyle(
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                            ))
                                                        .toList(),
                                                    value: to1,
                                                    onChanged: (String? value) {
                                                      setState(() {
                                                        to1 = value;
                                                      });
                                                    },
                                                    buttonStyleData:
                                                        const ButtonStyleData(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal: 16),
                                                      height: 40,
                                                      width: 140,
                                                    ),
                                                    menuItemStyleData:
                                                        const MenuItemStyleData(
                                                      height: 40,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        size(),
                                        textfeild(rate, context, "RATE")
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10, vertical: 1),
                            margin: EdgeInsets.symmetric(horizontal: 100),
                            child: Text("Cut-station Conveyance Charges (Rs.)"),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 80),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: me.width * .5,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Is GST Applicable on",
                                    style: font_l,
                                  ),
                                  Container(
                                    height: 30,
                                    child: Row(
                                      children: [
                                        Radio<String>(
                                          value: 'gst_applicable',
                                          groupValue: gst_applicable,
                                          onChanged: (value) {
                                            setState(() {
                                              gst_applicable = value!;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("gst_applicable"),
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Radio<String>(
                                          value: 'Professional Fees only',
                                          groupValue: gst_applicable,
                                          onChanged: (value) {
                                            setState(() {
                                              gst_applicable = value!;
                                            });
                                          },
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text("Professional Fees only"),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            size(),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    children: [
                                      textfeild(cgst, context, "CGST %"),
                                      size(),
                                      textfeild(igst, context, "IGST %"),
                                      size(),
                                      textfeild(gstammount, context, "GST Amount (Rs.)"),
                                      size(),
                                      textfeild(total_amount, context, "Total Amount (Rs.)"),
                                      size(),
                                    ],
                                ),
                                Column(
                                  children: [
                                    textfeild(sgst, context, "SGST %"),
                                    size(),
                                    textfeild(utgst, context, "UTGST %"),
                                    size(),
                                    textfeild(withgst, context, "Total Amount without GST"),
                                    size(),

                                  ],
                                )
                              ],
                            ),
                            size(),
                            textfeild1(total_amount1, context, "Total Amount (Rs.)", 3)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 35,
                            width: me.width * .06,
                            decoration: BoxDecoration(
                                color:Color(0xffEFEFEF),
                                borderRadius: BorderRadius.circular(5)
                                ),
                            child: Center(
                                child: Text(
                                  "Save",
                                  style: font_button,
                                )),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            height: 35,
                            width: me.width * .06,
                            decoration: BoxDecoration(
                                    color:Color(0xffEFEFEF),
                                borderRadius: BorderRadius.circular(5)
                              ),
                            child: Center(
                                child: Text(
                                  "Save",
                                  style: font_button,
                                )),
                          ),
                          SizedBox(width: 10,),
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
                        ],
                      )
                    ],
                  ),
            SizedBox(
              height: 500,
            ),
          ],
        ),
      ),
    );
  }
}
