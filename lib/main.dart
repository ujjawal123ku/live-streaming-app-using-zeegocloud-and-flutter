import 'package:flutter/material.dart';
import 'package:live_stream/create_live.dart';
import 'package:live_stream/home_page.dart';
import 'package:live_stream/live_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var userIdController;
    var userNameController;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    home: homepage(),
    routes: <String, WidgetBuilder>{
    "/MyHomePage": (context) => const MyHomePage(title: 'hello'),
    "/createlive": (context) => create(),
      "/watchlive":(context)=>MyWidget(liveID: "1", userID: userIdController.text, userName: userNameController.text),
    }
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,

        title: const Text("Live Streaming App"),
      ),
      body:  const homepage(),

    );

  }
}
