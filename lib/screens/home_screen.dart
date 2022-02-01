import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:study/screens/add_list/add_list_screen.dart';
import 'package:study/screens/post/post_screen.dart';
//필요없는 창이라 다 구현X

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 180,
                child: Image.asset("assets/logo.png", fit: BoxFit.contain),
              ),
              Text(
                "Welcome Back",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text("Name",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  )),
              Text("Email",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                  )),
              SizedBox(
                height: 15,
              ),
              ActionChip(label: Text("Logout"), onPressed: () {}),


              // 판매 게시글 목록 버튼
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PostScreen()),
                  );
                },
                child: Text('PostScrren'),
              ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddListScreen()));
              }, child: Text('addList'))
            ],
          ),
        ),
      ),
    );
  }
}
