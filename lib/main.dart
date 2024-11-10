import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Assignment 2',
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('My Profile'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.call)),
        ],
      ),
      body: const SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [

              //item 1
              SizedBox(height: 8,),
              SizedBox(
                height: 180,
                width: 180,
                child: CircleAvatar(
                  child: Icon(
                    Icons.icecream_outlined,
                    size: 110,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Ice cream is very delicious right?',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ),

              //item 2
              SizedBox(height: 40,),
              SizedBox(
                height: 180,
                width: 180,
                child: CircleAvatar(
                  child: Icon(
                    Icons.code,
                    size: 110,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: Text('Programming is not boring if you love it',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ),

              //item 3
              SizedBox(height: 40,),
              SizedBox(
                height: 180,
                width: 180,
                child: CircleAvatar(
                  child: Icon(
                    Icons.egg_outlined,
                    size: 110,
                  ),
                ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text('If you submit code directly cody from chatgpt then mark 0',
                  style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
