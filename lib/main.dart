import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final flutterWebviewPlugin = new FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Differ App',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Differ App'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.autorenew),
              tooltip: 'Refresh Web View',
              onPressed: () {
                print('Reloading WebView');
                flutterWebviewPlugin.reload();
              },
            ),
          ],
        ),
        body: Container(
          child: MyHomePage(title: 'Differ App'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: "http://app.productosdiffer.com/vendedores/"
    );
  }
}
