import 'package:flutter/material.dart';

import 'fonts.dart';

//page survey table feild
Widget table_Continer(String q,a,TextEditingController controller,bool color,BuildContext context)
{
  final me=MediaQuery.of(context).size;
  return  Container(

    width: me.width *.9,

    child: Row(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          width: me.width * .3,
         decoration: BoxDecoration(
             color: color?Color(0xffF5F5F5):Colors.white,
             border: Border.all(
                 width: .1,
               color: Color(0xff999999)
             )
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 10,),
                Text(
                  q,
                  style: font_b1,
                ),
                Text(
                  a,
                  style: bold
                  ,
                )
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          width: me.width * .4,
          decoration: BoxDecoration(
              color: color?Color(0xffF5F5F5):Colors.white,
              border: Border.all(
                  width: .1,
                  color: Color(0xff999999)
              )
          ),
          child: Container(
            child: Container(
              height: 30,
              margin: EdgeInsets.only(left: 10,top: 5,bottom: 5,right: 100),
              color: Colors.white,
              child: TextFormField(
                controller: controller,
                cursorColor: Colors.grey,
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  hintText: 'Enter a '+q.toString(),
                  hintStyle:
                  TextStyle(fontSize: 12, color: Colors.grey),
                  contentPadding: EdgeInsets.symmetric(
                      horizontal: 15, vertical: 5),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(
                      color:
                      Colors.grey,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(
                        color:
                        Colors.grey
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(2),
                    borderSide: BorderSide(
                        color:
                        Colors.grey
                    ),
                  ),

                ),

              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          width: me.width * .198  ,
          decoration: BoxDecoration(
              color: color?Color(0xffF5F5F5):Colors.white,
              border: Border.all(
                  width: .1,
                  color: Color(0xff999999)
              )
          ),

        ),

      ],
    ),
  );
}