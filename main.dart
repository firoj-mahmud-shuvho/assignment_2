import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
      debugShowCheckedModeBanner: false,

    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.red,
        title: Text("Need Blood",style: TextStyle(color: Colors.white),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white,))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Container(
              child: CircleAvatar(
                  backgroundColor: Colors.black38,
                  radius: 80,
                  child: Icon(Icons.bloodtype_outlined,size: 80,color: Colors.red,)
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Donate Blood",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),

          ],
        ),
      ),

    );
  }
}


