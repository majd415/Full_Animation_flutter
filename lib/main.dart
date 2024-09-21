import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  //SingleTickerProviderStateMixin

  late AnimationController animationController;
  late AnimationController controller;
  late Animation<AlignmentGeometry> alignController;
  late Animation<double> rotateController;


  @override
  void initState() {
  animationController=AnimationController(vsync: this,duration: Duration(seconds: 2),lowerBound:100,upperBound: 300 );
  controller=AnimationController(vsync: this,duration: Duration(seconds: 2),)..repeat(reverse: true);
alignController=Tween<AlignmentGeometry>(
begin: Alignment.centerLeft,
  end: Alignment.centerRight
).animate(controller);
  rotateController=Tween<double>(
begin: 0,
    end: 2
  ).animate(controller);

  super.initState();
  }
  //end SingleTickerProviderStateMixin




  int _counter = 0;
  double w=100;
  double h=200;
  double rad=0;
  double op=1.0;
  double fo=15;
  double ri=0.0;
  double le=0.0;
  AlignmentGeometry alignment=Alignment.topLeft;
  EdgeInsetsGeometry pading=EdgeInsets.all(8.0);
  double elevat=2.2;
  Color colorw=Colors.black;
  void _incrementCounter() {
    setState(() {

      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: ListView(
        children: [
          InkWell(
            onTap: (){

                w=200;
                h=300;
                rad=20;
                setState(() {});
            },
            child: Center(
              child: AnimatedContainer(
                duration: Duration(seconds: 4),
                curve: Curves.bounceIn,
                child: Container(
                  width: w,
                  height: h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(rad)),
                        color: Colors.red
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){

           op=0.0;
              setState(() {});
            },
            child: Center(
              child: AnimatedOpacity(
                opacity: op,
                duration: Duration(seconds: 4),
                curve: Curves.bounceIn,
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.green
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){

              fo=30;
              setState(() {});
            },
            child: Center(
              child: AnimatedDefaultTextStyle(
                duration: Duration(seconds: 2),
                style: TextStyle(fontSize: fo),
                child: Text("magd hamooud "),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: 300,
            height: 400,
            child: InkWell(
              onTap: (){
                ri=20;
                le=20;
                setState(() {

                });
              },
              child: Stack(
                children: [
                  //AnimatedPositionedDirectional if we have translate ltf rtl
                 Container(
                   color: Colors.cyan,
                   height: 600,
                 ),
                  AnimatedPositioned(
                      left:le,

                      child: Container(
                        width: 200,
                        height: 200,
                        color: Colors.red,
                      ),
                      duration: Duration(seconds: 2))
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              colorw=Colors.pink;
              elevat=3;
              setState(() {});
            },
            child: AnimatedPhysicalModel(
              child: Container(
                height: 400,
                child: Text("AnimatedPhysicalModel "),
                alignment: Alignment.center,
              ),
              shape: BoxShape.circle,
              elevation: elevat,
              shadowColor: colorw,
              duration: Duration(seconds: 2),
              color: colorw,
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              pading=EdgeInsets.all(30);
              setState(() {});
            },
            child: AnimatedPadding(

              padding: pading,
              child: Container(
                color: Colors.orange,
                height: 400,
                child: Text(" AnimatedPadding "),
                alignment: Alignment.center,
              ),
              duration: Duration(seconds: 2),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
w=200;
h=300;
              setState(() {});
            },
            child: AnimatedSize(

              child: Container(
                color: Colors.deepPurple,
                width:w ,
                height: h,
                child: Text("AnimatedSize "),
                alignment: Alignment.center,
              ),
              duration: Duration(seconds: 2),
            ),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              alignment= Alignment.center;
              setState(() {});
            },
            child: AnimatedAlign(
              alignment: alignment,

              child: Container(
                color: Colors.pink,
                width:200 ,
                height: 200,
                child: Text("magd hamooud "),
              ),
              duration: Duration(seconds: 2),
            ),
          ),
          SizedBox(height: 10,),
TweenAnimationBuilder(
  // colortween(begin:colors.red,end:colors.blue)

  //if we want dont work during first start page put begin and and in same value
    tween: Tween(begin:100.0 ,end:300.0 ),
    duration: Duration(seconds: 2),
    builder: (context,value,child){
      return Container(
        alignment: Alignment.center,
        width: value,
        height: value,
        color: Colors.greenAccent,
        child: Text("TweenAnimationBuilder"),

      );
    }),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){

              animationController.forward();
              //animationController
              // animationController.reverse();
              //stop
              //repeat
              //reset
            },
            child: AnimatedBuilder(
              //child : if we don't need implicate animation on wedgit we put it in child
              child: Text("Text "),
                animation:animationController ,
                builder: (context,child){
                  return Container(
                    width:animationController.value ,
                    height:animationController.value ,
                    color: Colors.red,
                    child: Text(" Explicit Animations",
                    style: TextStyle(fontSize: animationController.value/10),),
                  );
                }),
          ),
// TweenAnimationBuilder(tween: tween, duration: duration, builder: builder)
          SizedBox(height: 10,),

TweenAnimationBuilder(
    tween: Tween(begin: 0.0,end: 2*3.14),
    duration: Duration(seconds: 3),
    builder: (context,value,child){
      return Transform.rotate(
        angle:value,
        child:  Container(
          width: 200,
          height: 200,
          color: Colors.redAccent,
          child: Text("Rotate "),

        ),);

    }),
          // Transform.translate(offset: offset)
          // Transform.scale()
          SizedBox(height: 10,),


          AlignTransition(alignment: alignController,

              child: RotationTransition(
                turns: rotateController,
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.lightGreenAccent,
                  child: Text("Rotate "),

                ),
              ) )

        ],
      ),
    );
  }
}
