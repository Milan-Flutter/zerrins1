import 'package:flutter/material.dart';

import 'fonts.dart';

//normal textfeild with 2 row
Widget textfeild(TextEditingController controller,BuildContext context,String t1)
{
  final me=MediaQuery.of(context).size;
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      width: me.width * .4,
      child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(t1,style: font_l,),
          Container(
            width: me.width * .22,
            height: 30,
            color: Color(0xffD9D9D9).withOpacity(.2),
            child: TextFormField(
              controller: controller,
              cursorColor: Colors.grey,
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                hintText: 'Enter a '+t1.toString(),
                hintStyle:
                TextStyle(fontSize: me.width * .009, color: Colors.grey),
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
  );
}
//normal textfeild with 3 row with multiple line
Widget textfeild2(TextEditingController controller,BuildContext context,String t1)
{
  final me=MediaQuery.of(context).size;
  return SingleChildScrollView(

    child: Container(
      width: me.width * .4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(t1,style: font_l,),
          Container(
            width: me.width * .18,
            height: 30,
            color: Color(0xffD9D9D9).withOpacity(.2),
            child: TextFormField(
              controller: controller,
              cursorColor: Colors.grey,
              style: TextStyle(fontSize: 12),
              decoration: InputDecoration(
                hintText: 'Enter a '+t1.toString(),
                hintStyle:
                TextStyle(fontSize:  me.width * .009, color: Colors.grey),
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
  );
}
//normal textfeild with 3 row with multiple line
Widget textfeild3(TextEditingController controller,BuildContext context,String t1,int line)
{
  final me=MediaQuery.of(context).size;
  return Container(
    width: me.width * .4,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(t1,style: font_l,),
        Container(
          width: me.width * .18,
          color: Color(0xffD9D9D9).withOpacity(.2),
          child: TextFormField(
            controller: controller,
            cursorColor: Colors.grey,
            maxLines: line,
            style: TextStyle(fontSize: 12),

            decoration: InputDecoration(
              hintText: 'Enter a '+t1.toString(),
              hintStyle:
              TextStyle(fontSize:  me.width * .00, color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 15, vertical: 15),
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
  );
}
//normal textfeild with 2 row with multiple line
Widget textfeild4(TextEditingController controller,BuildContext context,String t1,int line)
{
  final me=MediaQuery.of(context).size;
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Container(
      width: me.width * .4,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(t1,style: font_l,),
          Container(
            width: me.width * .22,
            color: Color(0xffD9D9D9).withOpacity(.2),
            child: TextFormField(
              controller: controller,
              cursorColor: Colors.grey,
              maxLines: line,
              style: TextStyle(fontSize: 12),

              decoration: InputDecoration(
                hintText: 'Enter a '+t1.toString(),
                hintStyle:
                TextStyle(fontSize:  me.width * .00, color: Colors.grey),
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 15, vertical: 15),
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
  );
}
//normal textfeild with 1 row with multiple line
Widget textfeild1(TextEditingController controller,BuildContext context,String t1,int line)
{
  print("Harswwwh"+line.toString());
  final me=MediaQuery.of(context).size;
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        width: me.width * .1,
          child: Text(t1,style: font_l,maxLines: 7,overflow: TextOverflow.ellipsis,)),
      SizedBox(width: me.width * .08,),
      Container(
        width: me.width * .6,

          color: Color(0xffD9D9D9).withOpacity(.2),
        child: TextField(
          controller: controller,
          style: TextStyle(
              color: Colors.black
          ),
          cursorColor: Colors.grey,
          maxLines: line,
          decoration: InputDecoration(
            hintText: 'Enter a '+t1.toString(),
            hintStyle:
            TextStyle(fontSize:  me.width * .00, color: Colors.grey),

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
  );
}

//Size box between tow feild
Widget size()
{
  return SizedBox(
    height: 15,
  );
}