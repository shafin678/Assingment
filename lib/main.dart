import 'package:assingment_1/page1.dart';
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

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Product Details'),
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

        title: Text(widget.title),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:<Widget> [
             Container(
               height: 200,
                 width: 200,
                 child: Image.asset('assets/images/galaxy.png')),

               Container(
                 height: 40,
                 width: 230,
                 color: Colors.green,

                 child: Text("Price : 1,00,000 TAKA",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),) ,

               ),



               Container(
                height: 60,
                width: 200,
                color: Colors.green,
                child: ElevatedButton(
                  child: Text("Buy Now",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder:(context){return page1();}));

                  },
                ),

              ),

          ],
        ),
      ),
    );
  }
}
