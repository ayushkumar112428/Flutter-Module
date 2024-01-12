// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// class PhoneCall extends StatelessWidget {
//   const PhoneCall({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final String number = "8200446981";
//     Future<void> _makePhoneCall() async{
//       final String url = "tel:$number";
//       if(await canLaunch(url)){
//         await launch(url);
//       }else{
//         throw 'Could not launch $url';
//       }
//     };
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text("Phone Call"),),
//       ),
//       body: Center(
//         child: SizedBox(
//           height: 50,width: 150,
//           child: ElevatedButton(onPressed: _makePhoneCall, child: const Center(child: Text(("Call")))),
//         ),
//       ),
//     );
//   }
// }
