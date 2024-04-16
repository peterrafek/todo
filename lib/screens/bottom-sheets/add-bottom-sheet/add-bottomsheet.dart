import 'package:flutter/material.dart';
import 'package:todo/utils/app-theme.dart';

class AddBottomSheet extends StatefulWidget{
  const AddBottomSheet({super.key});

  @override
  State<AddBottomSheet> createState() => _AddBottomSheetState();
}

class _AddBottomSheetState extends State<AddBottomSheet> {
  DateTime SelectedDate =DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: MediaQuery.of(context).viewInsets,
      child: Container(
        padding: EdgeInsets.all(16),
         height: MediaQuery.of(context).size.height * 0.4,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add nw task',style: AppTheme
              .bottomSheetTitleTextStyle
              ,textAlign: TextAlign.center,),
            TextField(
              decoration:
              InputDecoration(
                label: Text('enter your task')
              ),),
            TextField(
              decoration:
              InputDecoration(
                  label: Text('decorition',style: AppTheme.taskDescriptionTextStyle,)
              ),),

            SizedBox(height: 10,),
            Text('select date',textAlign: TextAlign.center,
                style: AppTheme
                .bottomSheetTitleTextStyle.copyWith(fontWeight: FontWeight.w500)),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                showMyDatePicker();

              },
              child: Text(
                '${SelectedDate.day}/${SelectedDate.month}/${SelectedDate.year}' ,textAlign: TextAlign.center,style: AppTheme.taskDescriptionTextStyle,
                ),
            ),
            Spacer(),
            ElevatedButton(onPressed: (){}, child: Text('add'))


          ],
        ),
      ),
    );
  }

  void showMyDatePicker() async{
   SelectedDate =( await showDatePicker(
       context: context,
       initialDate: SelectedDate,
       firstDate: DateTime.now(),
       lastDate: DateTime.now().add(Duration(days: 365)))) ?? SelectedDate
   ;
setState(() {

});
  }
}
