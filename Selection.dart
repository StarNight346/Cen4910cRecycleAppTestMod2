import 'package:flutter/material.dart';

import './main.dart';

class Selection extends StatelessWidget {
  final String selectionText;
  int screenNumber;
  final void Function (int) change;
 
  //MyApp selTest = MyApp();

  Selection(this.selectionText, this.screenNumber, selectionNumber, this.change);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(7),
      child: Column(
        children: <Widget> [
        ElevatedButton (
        onPressed: () => change(screenNumber),
        //selTest.myAppState.choosePage();},
        child: Text(selectionText),
        ),
      ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// import './main.dart';


// class Selection extends StatelessWidget {
//   final String selectionText;
//   int screenNumber;

//   Selection(this.selectionText, this.screenNumber, selectionNumber);

//   void pickPage() {
//     selectionNumber = this.screenNumber;
//   }  

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.infinity,
//       margin: EdgeInsets.all(7),
//       child: Column(
//         children: <Widget> [
//         ElevatedButton (
//         onPressed: pickPage,
//         child: Text(selectionText),
//         ),
//       ],
//       ),
//     );
//   }
// }