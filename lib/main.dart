import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:study/screens/login_screen.dart';

Future<void> main() async{
  
  //Flutter Engine과의 상호작용을 위해 사용됨 (플랫폼 채널의 위젯 바인딩을 보장해야함.)
  WidgetsFlutterBinding.ensureInitialized(); //Firebase를 쓰기 전에 꼭 작성해줘야함.
  await Firebase.initializeApp(); //Firebase를 초기화 하기 위해서 네이티브 코드를 호출해야함. 
  //firestore을 가져와서 사용하기 위해 FirebaseFirestore.instace; 코드 이전에 실행해줘야함.(registration_screen.dart의 signup 함수에서 사용)
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email and PW Login',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner:false,
      home: LoginScreen(),
    );
  }
}
