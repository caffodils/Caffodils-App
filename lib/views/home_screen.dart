import 'dart:ui';

import 'package:bot_toast/bot_toast.dart';
import 'package:caffodils/controllers/check_link.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _link = TextEditingController();

  @override
  void initState() {
    FlutterDownloader.registerCallback(downloadCallback);
    _init();
    super.initState();
  }

  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {}

  void _init() async {
    Map<String, dynamic> result =
        await SystemChannels.platform.invokeMethod('Clipboard.getData') ?? {};
    WidgetsBinding.instance
        ?.addPostFrameCallback((_) => _link.text = result['text'] == null
            ? ""
            : result['text'].toString().contains("https://")
                ? result['text']
                : "");
    setState(() {});
  }

  @override
  void dispose() {
    _link.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text(
            'Caffodils',
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Only Insta Reels and Post Pic download supported at this moment, project is under development',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 10.0),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 30.0,
                  vertical: 10.0,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 5.0,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    30.0,
                  ),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: TextField(
                  controller: _link,
                  autofocus: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: InkWell(
                      onTap: () {
                        _link.clear();
                      },
                      child: const Icon(Icons.cancel),
                    ),
                    hintText: 'Paste your link',
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              InkWell(
                onTap: () {
                  if (_link.text.trim().contains('.') && _link.text != '') {
                    FocusScope.of(context).requestFocus(FocusNode());
                    CheckLink.identify(_link.text.trim());
                    _link.clear();
                  } else {
                    BotToast.showSimpleNotification(title: 'Invalid link');
                  }
                },
                borderRadius: BorderRadius.circular(30.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  height: 50,
                  width: 200,
                  child: const Center(
                      child: Text(
                    'Download',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
