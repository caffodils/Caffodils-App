import 'package:bot_toast/bot_toast.dart';
import 'package:caffodils/controllers/ext_storage_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class DownloadController {
  static download(
      {required String url,
      required String dirName,
      required String fileName}) async {
    BotToast.showSimpleNotification(
      title: 'Download started, check notification',
      titleStyle: const TextStyle(
        color: Colors.white,
      ),
      backgroundColor: Colors.orange.shade900,
    );
    String? path = await ExtStorageProvider.getExtStorage(dirName: dirName);
    await FlutterDownloader.enqueue(
      url: url,
      savedDir: path!,
      fileName: fileName,
      showNotification: true,
      openFileFromNotification: true,
      saveInPublicStorage: true,
    );
  }
}
