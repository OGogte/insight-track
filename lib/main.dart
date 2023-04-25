import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:insighttrack/pages/SideBarX.dart';
import 'package:insighttrack/pages/home_page.dart';
import 'package:insighttrack/pages/login_screen.dart';
import 'package:insighttrack/pages/new_page.dart';
import 'pages/journal_paper_data.dart';
import 'student_model.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions( apiKey: "AIzaSyBTd3z-M663ThxadkucKmvPwLRPAp4PDw8",
        appId: "1:134678294959:web:66b028dbafaf5955a43f5a",
        messagingSenderId: "134678294959",
        projectId: "pw2-insight-track" )
  );
  runApp(const MyApp());
}
StudentModel stud = StudentModel();
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomePage2()/*JournalPaper()*/
    );
  }
}


