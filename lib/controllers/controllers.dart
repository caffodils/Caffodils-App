class Controllers {
  static String getFileName({required String link, required String platform}) {
    String _fileName = 'file_unknown${DateTime.now()}';
    for (var type in _fileTypes) {
      if (link.contains(type) == true) {
        _fileName = platform + DateTime.now().toString() + type;
      }
    }

    return _fileName;
  }

  static final List _fileTypes = [
    // Video
    ".mp4",
    ".png",
    ".mov",
    ".mkv",

    // Audio
    ".mp3",
    ".webm",
    ".m4a",
    ".ocr",
    ".wav",
    ".wma",
    ".aac",

    // Image
    ".jpeg",
    ".jpg",
    ".png",
    ".gif",

    // File
    ".pdf"
  ];
}
