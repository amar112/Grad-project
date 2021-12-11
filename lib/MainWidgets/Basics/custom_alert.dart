// import 'package:tmarjy_m3ak/constants.dart';
// import 'package:flutter/material.dart';
//
// import 'custom_btn.dart';
//
// class CustomAlert {
//   showOptionDialog(
//       {String msg,
//       String btnMsg,
//       Function onClick,
//       BuildContext context,
//       String cancel,
//       Function onCancel}) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return SimpleDialog(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//             backgroundColor: Colors.white,
//             elevation: 5,
//             contentPadding: EdgeInsets.only(top: 10, left: 5, right: 5),
//             children: <Widget>[
//               Text(
//                 msg,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black, fontSize: 18),
//               ),
//               SizedBox(height: 35),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   CustomBtn(
//                     color: Colors.red,
//                     onTap: onCancel,
//                     text: cancel,
//                     txtColor: Colors.white,
//                   ),
//                   SizedBox(width: 10),
//                   CustomBtn(
//                     color:  kPrimary,
//                     onTap: onClick,
//                     text: btnMsg,
//                     txtColor: Colors.white,
//                   ),
//                 ],
//               ),
//             ],
//           );
//         });
//   }
//
//   showCustomDialog(
//       {String msg, String btnMsg, Function onClick, BuildContext context}) {
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return SimpleDialog(
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//             backgroundColor: Colors.white,
//             elevation: 5,
//             contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10),
//             children: <Widget>[
//               Text(
//                 msg,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(color: Colors.black, fontSize: 18),
//               ),
//               SizedBox(height: 35),
//               Padding(
//                 padding: const EdgeInsets.only(right: 10, left: 10),
//                 child: CustomBtn(
//                     color:  kPrimary,
//                     onTap: onClick,
//                     text: btnMsg,
//                     txtColor: Colors.white),
//               ),
//             ],
//           );
//         });
//   }
//
//   showSnackBar({BuildContext context, String title}) {
//     final _snackBar = SnackBar(
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//         content: Text(title,
//             textAlign: TextAlign.center,
//             style: TextStyle(fontWeight: FontWeight.bold)),
//         elevation: 1,
//         backgroundColor:  kPrimary,
//         behavior: SnackBarBehavior.floating,
//         duration: Duration(seconds: 2));
//     Scaffold.of(context).showSnackBar(_snackBar);
//   }
//
//   toast({String title}) {
//     Fluttertoast.showToast(msg: title);
//   }
// }
