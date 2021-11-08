import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      ),
      home: SafeArea(child:WebViewer()),
    );
  }
}

class WebViewer extends StatefulWidget {
  const WebViewer({Key? key}) : super(key: key);
  @override
  WebViewerState createState() => WebViewerState();
}

class WebViewerState extends State<WebViewer> {
  final url='https://google.com';
  @override
  void initState() {
    super.initState();
    // Enable hybrid composition.
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return WebView(
      allowsInlineMediaPlayback: true,
      gestureNavigationEnabled: true,
      javascriptMode: JavascriptMode.unrestricted,
      initialUrl: url
    );
  }
}
