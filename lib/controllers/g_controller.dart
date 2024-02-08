import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

class GController extends GetxController {
  WebStorageManager webStorageManager = WebStorageManager.instance();
  InAppWebViewController? webViewController;
  InAppWebViewSettings webViewSettings = InAppWebViewSettings(
    algorithmicDarkeningAllowed: true,
  );

  String url = 'https://www.google.com/maps/';
  String shareUrl = 'Select The Location';

  updateUrl(url) {
    shareUrl = url;
  }

  getUrlToS() async {
    return shareUrl;
  }
}
