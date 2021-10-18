// import 'dart:developer';
// import 'dart:io';
// import 'package:caffodils/controllers/app_urls.dart';
// import 'package:caffodils/views/profile/home_screen.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({Key? key}) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   late WebViewController _webViewController;

//   int _stackToView = 1;

//   void _handleLoad(String url) {
//     setState(() {
//       _stackToView = 0;
//     });
//     setState(() {
//       _stackToView = 0;
//     });
//     log(url);
//     if (url == "https://www.instagram.com/") {
//       debugPrint('loggedin');
//       listCookies(context: context, controller: _webViewController);
//     }
//   }

//   listCookies(
//       {required WebViewController controller,
//       required BuildContext context}) async {
//     final String? cookies =
//         await controller.evaluateJavascript('document.cookie');
//     debugPrint(cookies);
//     if (cookies != null) {
//       Navigator.push(
//         context,
//         MaterialPageRoute(builder: (context) => HomeScreen()),
//       );
//     } else {}
//   }

//   @override
//   void initState() {
//     if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0.0,
//         title: Text(
//           'Caffodils',
//           style: TextStyle(
//             color: Colors.blueGrey.shade900,
//           ),
//         ),
//       ),
//       body: WillPopScope(
//         onWillPop: () async {
//           if (await _webViewController.canGoBack()) {
//             _webViewController.goBack();
//             return false;
//           } else {
//             return true;
//           }
//         },
//         child: IndexedStack(
//           index: _stackToView,
//           children: [
//             Column(
//               children: [
//                 Expanded(
//                   child: WebView(
//                     initialUrl: AppUrls.loginUrl,
//                     javascriptMode: JavascriptMode.unrestricted,
//                     onPageFinished: _handleLoad,
//                     onWebViewCreated: (WebViewController webViewController) {
//                       this._webViewController = webViewController;
//                     },
//                   ),
//                 ),
//               ],
//             ),
//             Container(
//                 child: Center(
//               child: CircularProgressIndicator(),
//             )),
//           ],
//         ),
//       ),
//     );
//   }
// }
