import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Live test 2',
      home: HomeActivity(),
    );
  }
}


class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Need Blood',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,))
        ],
      ),
      
      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            SizedBox(
              height: 200,
              width: 200,
              child: CircleAvatar(
                backgroundColor: Colors.black54,
                child: Icon(Icons.bloodtype_outlined,color: Colors.redAccent,size: 100,),
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Donate Blood',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            )

          ],
        ),
      ),
      
    );
  }
}
