import 'package:flutter/material.dart';
import 'package:first_app/Styled_text.dart';
import 'package:first_app/dice_roller.dart';
class GradualContainer extends StatelessWidget {
  const GradualContainer(this.mycolor1, this.mycolor2, {super.key});
  final Color mycolor1;
  final Color mycolor2;
  @override
  Widget build(context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
          colors: [
           mycolor1 ,
          mycolor2 ,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child:const  Center(
        
        child:  DiceRoller() ,
      ),
    );
  }
}
