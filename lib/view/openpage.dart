import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internship2/view/mainpage.dart';

class openpage extends StatefulWidget {
  const openpage({super.key});

  @override
  State<openpage> createState() => _openpageState();
}

class _openpageState extends State<openpage> {
  @override
  Widget build(BuildContext context) {
    var Height=MediaQuery.sizeOf(context).height;
    var Width=MediaQuery.sizeOf(context).width;

    // Widget Createacc(){
    //   return 
    // }

    return Scaffold(
      body: Center(child: Column(children: [
        Container(height: Height*1,width: Width*1,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/bc/08/3e/bc083e13525eb0bf1ccb22f66dcd3065.jpg'),fit: BoxFit.cover)),
        child: Stack(
          
          children: [
            BackdropFilter(filter:ImageFilter.blur(sigmaX:10,sigmaY: 5))
          ,Container(height: Height*1,width: Width*1,decoration: BoxDecoration(
            gradient: LinearGradient(colors:[Colors.black.withOpacity(1),Colors.white.withOpacity(0.4)],end: Alignment.bottomRight,begin: Alignment.topLeft),
            image: DecorationImage(image: NetworkImage(''),fit: BoxFit.cover)),
            child: Column(children: [
                      SizedBox(height: 340,),
                      Padding(
                        padding: const EdgeInsets.only(left:50),
                        child: Text('Brand New World',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:50),),
                      )
                               ,SizedBox(height: 10,)
                          ,Text('Start Your Own Fantasy Journey',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize:20))
                                    ,SizedBox(height:110,)
                          ,Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: GestureDetector(
                              onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder:(context)=>mainpage()));
                              },
                              child: Container(height: Height*0.06,width: Width*0.7,child: Padding(
                                padding: const EdgeInsets.only(left:94,top: 13),
                                child: Text('Get Started'),
                              ),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),),
                            ),
                          ),
                          SizedBox(height:10,),
                          Padding(
                            padding: const EdgeInsets.only(left:10),
                            child: Stack(
                              children: [BackdropFilter(filter: ImageFilter.blur(sigmaX:5,sigmaY: 5))
                                ,Container(height: Height*0.06,width: Width*0.7,
                                decoration: BoxDecoration(
                                 border: Border.all(width:0.6,color: Colors.white),
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(20)),
                                  
                                  ),
                              
                              Container(height: Height*0.06,width: Width*0.7,
                              child: Padding(
                                  padding: const EdgeInsets.only(left:90,top: 13),
                                  child: Text('Create Account',style: TextStyle(color: Colors.white),),
                                ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(colors: [Colors.black.withOpacity(1),Colors.white.withOpacity(0.1),],begin: Alignment.topLeft,end: Alignment.bottomRight)
                              ),)
                              
                              ],
                            ),
                          ),
          
          
          
            ],),)
        ],),)
      ],),),
    );
  }
}