import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:zerrins1/utils/text_feild.dart';

import '../../utils/color.dart';
import '../../utils/fonts.dart';

class neft_aadhar extends StatefulWidget {
  const neft_aadhar({super.key});

  @override
  State<neft_aadhar> createState() => _neft_aadharState();
}

class _neft_aadharState extends State<neft_aadhar> {
  String payment_method = "aadhar";
  String? pay_type;
  TextEditingController _name = TextEditingController();
  TextEditingController _account_number = TextEditingController();
  TextEditingController _bank_name = TextEditingController();
  TextEditingController _branch_name = TextEditingController();
  TextEditingController _re_account_number = TextEditingController();
  TextEditingController _state = TextEditingController();
  TextEditingController _city = TextEditingController();
  TextEditingController _ifsc = TextEditingController();
  TextEditingController _micr = TextEditingController();
  String? check_file_name;
  String? check_file_path;

  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  void _openFilePicker(BuildContext context) async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      PlatformFile file = result.files.first;
      check_file_path = file.path;
      check_file_name = file.name;
      print("File path: ${file.path}");
      print("File name: ${file.name}");
      setState(() {});
    } else {
      print("File picker canceled.");
    }
  }

  @override
  Widget build(BuildContext context) {
    final me = MediaQuery.of(context).size;
    return Container(
      width: me.width,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              width: me.width,
              padding: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: me.width * .4,
                          child: Row(
                            children: [
                              Container(
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'aadhar',
                                      groupValue: payment_method,
                                      onChanged: (value) {
                                        setState(() {
                                          payment_method = value!;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("Aadhaar Payment"),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Radio<String>(
                                      value: 'neft',
                                      groupValue: payment_method,
                                      onChanged: (value) {
                                        setState(() {
                                          payment_method = value!;
                                        });
                                      },
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text("NEFT Payment"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        size(),
                        textfeild(_name, context, "A/C golder name"),
                        size(),
                        textfeild(_account_number, context, "Account number"),
                        size(),
                        textfeild(_bank_name, context, "Branch name"),
                        size(),
                        textfeild(_state, context, "State"),
                        size(),
                        textfeild(_ifsc, context, "IFSC Code"),
                        size(),
                        Container(
                          width: me.width * .4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Settlement Type",
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
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                        width: me.width * .13,
                                        child: Text(
                                            check_file_name == null
                                                ? "No file chosen"
                                                : check_file_name.toString(),
                                            maxLines: 1,
                                            overflow: TextOverflow.ellipsis,
                                            style: font_b1)),
                                    InkWell(
                                      onTap: () {
                                        _openFilePicker(context);
                                      },
                                      child: Container(
                                        width: me.width * .08,
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 5),
                                        decoration: BoxDecoration(
                                          color:
                                              Color(0xffCFCFCF).withOpacity(.2),
                                          border: Border(
                                              left: BorderSide(
                                            color: Color(0xffCFCFCF),
                                          )),
                                        ),
                                        child: Text(
                                          "+ Upload File",
                                          style: font_b1,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: [
                        Container(
                          width: me.width * .4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Settlement Type",
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
                                    value: pay_type,
                                    onChanged: (String? value) {
                                      setState(() {
                                        pay_type = value;
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
                        textfeild(_bank_name, context, "Bank Name"),
                        size(),
                        textfeild(_re_account_number, context, "Re-enter account\nnumber"),
                        size(),
                        textfeild(_city, context, "City"),
                        size(),
                        textfeild(_micr, context, "MICR Code"),
                        size(),
                      ],
                    ),
                  ],
                ),
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
                  width: me.width * .15,
                  decoration: BoxDecoration(
                      gradient: g1, borderRadius: BorderRadius.circular(5)),
                  child: Center(
                      child: Text(
                    "Bank Details",
                    style: font_button,
                  )),
                ),
                SizedBox(
                  width: 10,
                ),
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
