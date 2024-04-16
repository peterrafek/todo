import 'package:flutter/material.dart';
import 'package:todo/utils/app-colors.dart';
import 'package:todo/utils/app-theme.dart';

class TodoWidget extends StatelessWidget {
  const TodoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 22,
      horizontal: 30),
      padding: EdgeInsets.symmetric(
          vertical
              : 24,horizontal: 18),

      decoration:
    BoxDecoration(
      color: AppColors.White,
    borderRadius:BorderRadius.circular(12) ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),
              color: AppColors.Primiary,),
            height: 62,
            width: 4,

          ),
          SizedBox(width: 24,),
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Play basketBall',style: AppTheme.taskTitleTextStyle,),
                SizedBox(height: 10,),
                Text('Description',),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: AppColors.Primiary,
            ),
            padding: EdgeInsets.symmetric(horizontal: 20,
            vertical: 4),


              child: Icon(Icons.check,size: 30,color: AppColors.White,),
          )


        ],
      ),

    );
  }
}
