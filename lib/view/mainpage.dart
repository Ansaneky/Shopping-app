import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:internship2/view/mainpage1.dart';
import 'package:internship2/view/model/product.dart';
import 'package:internship2/view/openproduct.dart';

class mainpage extends StatefulWidget {
  const mainpage({super.key});

  @override
  State<mainpage> createState() => _mainpageState();
}

class _mainpageState extends State<mainpage> {

   List<Prodcut>searchlist=[
      Prodcut(
      name:'To Kill a Mockingbird',
      image:'https://books.google.co.in/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70fRUw9Pm4a_fP2vVWPzIgAxcz7GesuzU8WX9OBSSX-1ghNOa_qScFHRgoA02eTCW4RpUXSA7FsG5iw9aM7LigQaoIoxp3ZVwcr5vI2_9sOUvVk9J02pu1eEV2qMQPWO1Abr3ly',
      price:'500 R.s',
    ),
     Prodcut(
      name:'The Brothers Karamazov',
      image:'https://books.google.co.in/books/publisher/content?id=WbQmCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73SZGeViSW6T5a8i2UaWd2KD6lONYtWDSCyH8M6OcEuc0WJzGaxLNqPeOY7TMMVsMKcj9hiiUUzGVc1do73EWwxwN1yIla8-4ol5RB_EY3Ibo0x1elv2SW8qG9P6umm9SwedZJd',
      price:'320 R.s',
    ),
     Prodcut(
      name:'The Color Purple',
      image:'https://m.media-amazon.com/images/I/71f6DRbcrsL._SY522_.jpg',
      price:'550 R.s',
    ),
      Prodcut(
      name:'Great Expectations',
      image:'https://books.google.co.in/books/content?id=cVxrouJeyU0C&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72hwZM3UCXr38yUb3VEeldN7gLgvdduYA-woNt3U7lB2SMHcOGRYNiF2gzxuWzQSphyZVTDqILxS69HPb37auk9bpAN6gndKiAcAtyMFQPXnwnb8TfXFNpQZLMtRS4aAbpbxhsp',
      price:'150 R.s',
    )
   ];


   List <Prodcut> productList=[
    Prodcut(
      name:'To Kill a Mockingbird',
      image:'https://books.google.co.in/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70fRUw9Pm4a_fP2vVWPzIgAxcz7GesuzU8WX9OBSSX-1ghNOa_qScFHRgoA02eTCW4RpUXSA7FsG5iw9aM7LigQaoIoxp3ZVwcr5vI2_9sOUvVk9J02pu1eEV2qMQPWO1Abr3ly',
      price:'500 R.s',
    ),
     Prodcut(
      name:'The Brothers Karamazov',
      image:'https://books.google.co.in/books/publisher/content?id=WbQmCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73SZGeViSW6T5a8i2UaWd2KD6lONYtWDSCyH8M6OcEuc0WJzGaxLNqPeOY7TMMVsMKcj9hiiUUzGVc1do73EWwxwN1yIla8-4ol5RB_EY3Ibo0x1elv2SW8qG9P6umm9SwedZJd',
      price:'320 R.s',
    ),
      Prodcut(
      name:'The Color Purple',
      image:'https://m.media-amazon.com/images/I/71f6DRbcrsL._SY522_.jpg',
      price:'550 R.s',
    ),
      Prodcut(
      name:'Great Expectations',
      image:'https://books.google.co.in/books/content?id=cVxrouJeyU0C&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72hwZM3UCXr38yUb3VEeldN7gLgvdduYA-woNt3U7lB2SMHcOGRYNiF2gzxuWzQSphyZVTDqILxS69HPb37auk9bpAN6gndKiAcAtyMFQPXnwnb8TfXFNpQZLMtRS4aAbpbxhsp',
      price:'150 R.s',
    )


   ];

    void src(String keyword){
    List<Prodcut>templist=[];
    for (var i in  productList){
      if (i.name.toLowerCase().contains(keyword.toLowerCase())){
        templist.add(i);
      }

    }
     searchlist=templist;
     print('searchlist=$searchlist');
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    var height=MediaQuery.sizeOf(context).height;
    var width=MediaQuery.sizeOf(context).width;

   
     List productimagesList=['https://books.google.co.in/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70fRUw9Pm4a_fP2vVWPzIgAxcz7GesuzU8WX9OBSSX-1ghNOa_qScFHRgoA02eTCW4RpUXSA7FsG5iw9aM7LigQaoIoxp3ZVwcr5vI2_9sOUvVk9J02pu1eEV2qMQPWO1Abr3ly',
                          'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQa4k_wjzFNLG5GUJrM3LYbY3bSHSIdSuGF3XZrZgBz9-31n90P',
                          'https://m.media-amazon.com/images/I/71f6DRbcrsL._SY522_.jpg',
                          'https://books.google.co.in/books/content?id=cVxrouJeyU0C&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72hwZM3UCXr38yUb3VEeldN7gLgvdduYA-woNt3U7lB2SMHcOGRYNiF2gzxuWzQSphyZVTDqILxS69HPb37auk9bpAN6gndKiAcAtyMFQPXnwnb8TfXFNpQZLMtRS4aAbpbxhsp',
                          'https://books.google.co.in/books/publisher/content?id=WbQmCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73SZGeViSW6T5a8i2UaWd2KD6lONYtWDSCyH8M6OcEuc0WJzGaxLNqPeOY7TMMVsMKcj9hiiUUzGVc1do73EWwxwN1yIla8-4ol5RB_EY3Ibo0x1elv2SW8qG9P6umm9SwedZJd',
                          'https://books.google.co.in/books/content?id=DoJxdqUSBlYC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73fk0uFo3wWOMaVXAPd8dWLXpeOVXHtvHOnnvkqGJt891jNbwaf8kjdYy7rHjHABAxQ1aVqEDdFxEO8-olNuIQyXJFNGgfxn-lmw3_qljxFRQxTypWWSocZ6WKwBLIfwj4fkqp_',
                          'https://books.google.co.in/books/publisher/content?id=xGxBEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73AtFUYu_zwhRhTiuFe-osnLhYMnPRIDoQz_Dz0OSJlr7aIF4sKLKfrmrUKK8UwwwOTkO9oS8F3Tzfk4BHm9ta8GIbz3mMmoakaPhJ6yBOFbb6Nodn1vQpu5j_-vm1Uwz8_Zcp6',
                          'https://books.google.co.in/books/content?id=sfmp6gjZGP8C&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70xGFzHloB1UwROgNggy2CwaJIMHxHwHjojboRrfwRnoNl5uubc46BjV0CYMrUVgbpkeE1decy2o3YonwPyUbb-jt3WlshtQxIzt3K5ARwqYJqHZ9SpoQpktk3PhoeRRyAmqB0I',
                          'https://books.google.co.in/books/content?id=FodGfz5li5wC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70PdDhnqaVaH6D2zjGUWQ9DjQtX6VBpiSpKUB8zSimKueKU7ewyMUWYmcXxwr8qtalG2wOoF5rojIji5lVW63vGb5j9PBUKPzHNmO5lPdJ-aWqKXRvLvmQTQNDp-asdS-Zp4khW',
                          'https://books.google.co.in/books/publisher/content?id=xYtIDwAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70Fb_5kRd1q1hfzOJ4EPP34YSMGRJIvFO1E5BP9q4C3UzcJEIG09Jk57hWoIUEN4i0T1jcXBporS6qGOHIv_oq8HWdejM1PiM5B1lD9YM0FExQaKkd8OwkawVzO7WZf12Yyeos7'
     
     
     ];

     List NameList=[
      'To Kill a Mockingbird',
      'The book Lolita',
      'The Color Purple',
      'Great Expectations'

     ];

     List priceList=[
      '500',
      '320',
      '550',
      '150'


     ];

    Widget soloproduct(index,  String name, String price, String productimages){
      return GestureDetector(onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>openproduct(productimages:productimagesList[index],price:priceList[index],Name:NameList[index])));
      },
        child: Container(
          child: Stack(
            children: [BackdropFilter(filter: ImageFilter.blur(sigmaX:5,sigmaY:5))
              ,Container(height:height*0.25,width:width*0.45,decoration:BoxDecoration(
                gradient: LinearGradient(colors:[Colors.black.withOpacity(0.3),Colors.white.withOpacity(0.3)]),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(width:0.2,color: Colors.black)),child: Column(children: [
                         SizedBox(height: 15,),
                        Container(height:height*0.18,width: width*0.4,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage(productimages))),),
                        Container(height: height*0.04,width: width*0.4,
                        child: Column(children: [Padding(
                          padding: const EdgeInsets.only(right:40,top:6),
                          child: Text(NameList[index],style: TextStyle(color: Colors.white,fontSize:9,fontWeight: FontWeight.bold),),
                        ),
                                                     Padding(
                                                       padding: const EdgeInsets.only(right:65),
                                                       child: Text(price,style: TextStyle(color: Colors.black,fontSize:6,fontStyle:FontStyle.italic)),
                                                     ),],),)
        
                ],),),
            ],
          ),
        ),
      );

    }
    Widget mainproduct(n){
      return Container(height: height*0.26,width:width*1,child: Row(children: [
        SizedBox(width:15,),
        soloproduct(n,NameList[n],priceList[n],productimagesList[n]),
        SizedBox(width:15,),
       soloproduct(n+1,NameList[n+1],priceList[n+1],productimagesList[n+1]),],),);

    }

    return Scaffold(extendBodyBehindAppBar: true,
    appBar: AppBar(backgroundColor:Colors.transparent,
      leading:IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz_outlined)),),
      
      body: SingleChildScrollView(
        child: Center(child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
             SingleChildScrollView(
               child: Container(height: height*1,width: width*1,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/21/c6/9b/21c69ba87f82547b2c32bfb8655eeac9.jpg'),fit: BoxFit.cover)),
                 child:Column(children: [
                  SizedBox(height:120,),
                  Text('BookWormie',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize:30),),
                  SizedBox(height:30,)
                  ,Container(height: height*0.06,width:width*0.6,decoration:BoxDecoration(borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/50/9f/ee/509fee41d0dc7e9e7e71fdfd6a608463.jpg'),fit: BoxFit.cover)),
                  child: TextField(
                     onChanged:(value)async {
                         print('change=${value}');
                         src(value);
                         
                  },
                    decoration:InputDecoration(
                      contentPadding: EdgeInsets.only(left:64),
                      isDense: true,
                    suffixIcon:Icon(Icons.search,color:Color.fromARGB(255, 104, 33, 227),size:20,),
                    hintText:'Search here',hintStyle: TextStyle(color:Colors.black),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide(color: Color.fromARGB(255, 47, 148, 194))),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color:Colors.white)))),),
                              SizedBox(height: 20,)
                      ,Container(height: height*0.1,width: width*1,color: Colors.transparent,child: Padding(
                        padding: const EdgeInsets.only(left:330),
                        child: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>mainpage1()));
                        }, icon:Icon(Icons.menu)),
                      ),)
                    //  ,SingleChildScrollView(
                    //    child: Container(height: height*1,width: width*1,color: Colors.amber,
                    //    child: Column(children: [
                                                         
                    //     mainproduct(productimages[0],'To Kill a Mockingbird','500 R.s',productimages[1],'Lolita','350 R.s'),
                    //     mainproduct(productimages[2],'The Color Purple','550 R.s',productimages[3],'Great Expectations','150 R.s'),
                    //     mainproduct(productimages[4],'The Brothers Karamazov','320 R.s',productimages[5],'The Call of the Wild','100 R.s'),
                    //     mainproduct(productimages[6],'Brave New World','650 R.s',productimages[7],'Beloved','250 R.s'),
                    //    mainproduct(productimages[8],'The Corrections','440 R.s',productimages[9],'The Underground Railroad','370 R.s')
                    //    ],),),
                    //  )
                    
                      ,mainproduct(0),
                      mainproduct(2),
                      //mainproduct(4),
                      // mainproduct(productimagesList[2],'The Color Purple','550 R.s',productimagesList[3],'Great Expectations','150 R.s',2),
                      // mainproduct(productimages[1],'Lolita','350 R.s',productimages[5],'The Call of the Wild','100 R.s'),
                     // mainproduct(productimages[6],'Brave New World','650 R.s',productimages[7],'Beloved','250 R.s'),
                     // mainproduct(productimages[8],'The Corrections','440 R.s',productimages[9],'The Underground Railroad','370 R.s')
                 ],),
               ),
             )
          
            ],),
        ),),
      ),);
  }
}