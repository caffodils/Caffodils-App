import 'package:bot_toast/bot_toast.dart';
import 'package:caffodils/controllers/api_controllers/instagram_api.dart';
import 'package:caffodils/controllers/controllers.dart';
import 'package:caffodils/controllers/download_controller.dart';
import 'package:flutter/material.dart';

class CheckLink {
  static identify(String link) {
    if (link.contains('youtube.com') || link.contains('youtu.be')) {
      debugPrint('Youtube link detected');
      checkYoutube(link);
    } else if (link.contains('instagram.com')) {
      debugPrint('Instagram link detected');

      checkInstagram(link);
    } else if (link.contains('facebook.com')) {
      debugPrint('Facebook link detected');
      checkFacebook(link);
    } else {
      BotToast.showText(text: 'Link not supported');
    }
  }

  static checkYoutube(String link) {
    if (link.contains('shorts')) {
      debugPrint('It\'s a short');
    } else {
      debugPrint('It\'s a video');
    }
  }

  static checkInstagram(String link) async {
    String? _downloadUrl;
    if (link.contains('instagram.com/reel/')) {
      debugPrint('It\'s a reel');
      //Download reels video
      await InstagramApi().downloadReels(link).then((value) {
        _downloadUrl = value;
      });
      debugPrint(_downloadUrl);

      DownloadController.download(
          url: _downloadUrl!,
          dirName: 'Instagram',
          fileName: Controllers.getFileName(
              link: _downloadUrl!, platform: "instagram_reels"));
    } else if (link.contains('instagram.com/p/')) {
      debugPrint('It\'s a post');
      InstagramApi.getImageUrl(link.trim());
    } else {
      BotToast.showText(text: 'Link not supported');
    }
  }

  static checkFacebook(String link) {}
}
