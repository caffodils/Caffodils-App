// import 'dart:developer';

// import 'package:bot_toast/bot_toast.dart';
// import 'package:caffodils/models/user_profile_data_model.dart';
// import 'package:http/http.dart' as http;

// class UserData {
//   static Future<UserProfileDataModel?> getUserData(
//       {required String userName, required String cookei}) async {
//     BotToast.showLoading();
//     UserProfileDataModel? _userData;

//     var response = await http
//         .get(Uri.parse('https://www.instagram.com/$userName/?__a=1'), headers: {
//       "cookie": cookei,
//     });
//     if (response.statusCode == 200) {
//       _userData = userProfileDataModelFromJson(response.body);
//     } else {
//       log("something went wrong");
//     }
//     BotToast.closeAllLoading();
//     return _userData;
//   }
// }
