import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';
import 'package:todo_app_getx/constant/const.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({
    super.key, required this.time, required this.dis, this.press, 
   
  });
final String time, dis;
  final Callback? press;

 
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
      
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              time,
              style: customText,
            ),
            Text(
            dis,
              style: customText,
            ),
            IconButton(icon: Icon( Icons.delete,
              color: kWhite,)
        ,
             onPressed: (){press!();},
            )
          ],
        ),
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
            color: Colors.blueAccent,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
