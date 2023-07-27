
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Stack(
        children: [

          Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height*0.3,
                width: double.infinity,
                color: Colors.lightBlue.withOpacity(0.3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 100,),
                      Text("Welcome back this is sunil branch" ,style: TextStyle(fontSize: 20),),
                      Text("How Are you",style: TextStyle(fontSize: 30),)
                    ]
                ),
              ),

              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height*0.3,
                width: double.infinity,
                color: Colors.lightBlue.withOpacity(0.3),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 100,),
                      Text("Welcome back new user",style: TextStyle(fontSize: 20),),
                      Text("How Are you",style: TextStyle(fontSize: 30),)
                    ]
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                height: MediaQuery.of(context).size.height*0.7,
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 80,),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.grey.withOpacity(0.7),
                        ),
                      ),
                      const SizedBox(height: 20,),

                      ListView.builder(
                          itemCount: 4,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (BuildContext context, int index){
                            return   Stack(
                              children: [

                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0),
                                  child: Column(
                                    children: [

                                      Container(
                                        width: double.infinity,
                                        padding: EdgeInsets.symmetric(horizontal: 20),
                                        height: 80,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.yellowAccent,
                                        ),

                                      ),
                                      SizedBox(height: 10,)

                                    ],
                                  ),
                                ),

                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.pink,
                                    ),
                                    height: 20,
                                    width: 100,

                                  ),
                                ),


                              ],
                            );
                          }
                      ),



                    ],
                  ),
                ),
              ),
            ],
          ),
          
          Positioned(
            top: 210,
            left: 20,
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.pink.withOpacity(0.3),
                borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),

          Positioned(
            top: 200,
            right: 20,
            child: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.pink.withOpacity(0.3),
                  shape: BoxShape.circle,
                  // borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),

        ],
      ),
    );
  }
}
