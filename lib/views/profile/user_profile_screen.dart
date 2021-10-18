// import 'package:caffodils/controllers/api_controllers/user_data.dart';
// import 'package:caffodils/models/user_profile_data_model.dart';
// import 'package:flutter/material.dart';

// class UserProfileScreen extends StatefulWidget {
//   final String userName;
//   final String cookei;
//   const UserProfileScreen(
//       {Key? key, required this.userName, required this.cookei})
//       : super(key: key);

//   @override
//   _UserProfileScreenState createState() => _UserProfileScreenState();
// }

// class _UserProfileScreenState extends State<UserProfileScreen> {
//   UserProfileDataModel? _userData;

//   @override
//   void initState() {
//     UserData.getUserData(
//       userName: widget.userName,
//       cookei: widget.cookei,
//     ).then((value) {
//       if (value != null) {
//         setState(() {
//           _userData = value;
//         });
//       }
//     });
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: _userData == null
//             ? Center(
//                 child: Text('No User Found'),
//               )
//             : Column(
//                 children: [
//                   Image.network(_userData!.graphql!.user!.profilePicUrlHd!),
//                 ],
//               ),
//       ),
//     );
//   }
// }
