import 'dart:isolate';
import 'dart:ui';

import 'package:bot_toast/bot_toast.dart';
import 'package:caffodils/controllers/check_link.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
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
    // Register a send port

    // Listening for the data is coming from other isolate

    super.initState();
  }

  static void downloadCallback(
      String id, DownloadTaskStatus status, int progress) {
    //Looking up for a send port
    SendPort? _sendPort = IsolateNameServer.lookupPortByName('download');

    //Sending the data
    _sendPort?.send([id, status, progress]);
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping('download');
    _link.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(FocusNode());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: Text(
            'Caffodils',
            style: TextStyle(
              color: Colors.blueGrey.shade900,
            ),
          ),
          centerTitle: false,
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                        if (_link.text.trim().contains('.') &&
                            _link.text != '') {
                          FocusScope.of(context).requestFocus(FocusNode());
                          CheckLink.identify(_link.text.trim());
                          _link.clear();
                        } else {
                          BotToast.showSimpleNotification(
                              title: 'Invalid link');
                        }
                      },
                      child: const Icon(Icons.download),
                    ),
                    hintText: 'Paste your link',
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
