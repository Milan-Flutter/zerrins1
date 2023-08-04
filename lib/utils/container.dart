
import 'package:flutter/material.dart';

import 'fonts.dart';

//Garage detils container with diffrent size
Widget cont(String abc,BuildContext context)
{
  final me=MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 100,
    width: me.width * .08,
    decoration: BoxDecoration(
        color: Color(0xffD9D9D9)
    ),
    child: Center(
      child: Text(abc,style: font_b1,),
    ),

  );
}
Widget cont2(String abc,BuildContext context)
{
  final me=MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 60,
    width: me.width * .08,
    decoration: BoxDecoration(
        color: Color(0xffDBF0F9)
    ),
    child: Center(
      child: Text(abc,style: font_b1,),
    ),

  );
}
Widget cont3(String abc,BuildContext context)
{
  final me=MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 40,
    width: me.width * .08,
    decoration: BoxDecoration(
      border: Border.all(
        width: .1
      )
    ),

    child: Center(
      child: Text(abc,maxLines:1,style: font_b1,),
    ),

  );
}
Widget cont1(String abc,BuildContext context)
{
  final me=MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 10),
    height: 100,
    width: me.width * .08,
    decoration: BoxDecoration(

        border: Border.all()
    ),
    child: Center(
      child: Text(abc,style: font_b1,),
    ),

  );
}

//All Blue titles container
Widget title_cont(BuildContext context,String abc)
{
  final me=MediaQuery.of(context).size;
  return Container(
    height: 40,
    width: me.width,
    color: Color(0xffD9D9D9),
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 8),
    child: Text(abc,style: h1,),

  );
}