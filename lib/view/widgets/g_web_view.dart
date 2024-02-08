import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';

import '../../controllers/g_controller.dart';

class GWebView extends StatelessWidget {
  GWebView({super.key});

  final GController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      onWebViewCreated: (newController) {
        controller.webViewController = newController;
      }, //onWebViewCreated
      onUpdateVisitedHistory: (controllerLocal, url, androidIsReload) {
        controller.updateUrl(url.toString());
      }, //onUpdateVisitedHistory

      // onLoadStop: (controller, url) async {
      //   await controller.evaluateJavascript(
      //       source: "document.getElementsByClassName(\"i4qqBb\")[0].click();");
      // },

      initialUrlRequest: URLRequest(
        url: WebUri(controller.url),
      ), //URLRequest
    ); //InAppWebView
  } //build
} //GWebView
