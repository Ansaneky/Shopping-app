import 'dart:ui';

import 'package:flutter/material.dart';

class openproduct extends StatefulWidget {
   var productimages;
   var Name;
   var price;
   openproduct({super.key,required  this.productimages,required  this.price,required  this.Name});

  @override
  State<openproduct> createState() => _openproductState();
}

class _openproductState extends State<openproduct> {
  bool addcart=false;
  var curindex=0;
  @override

    //List productimagesList=[];
    //  var productimagesList=['https://books.google.co.in/books/publisher/content?id=PGR2AwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE70fRUw9Pm4a_fP2vVWPzIgAxcz7GesuzU8WX9OBSSX-1ghNOa_qScFHRgoA02eTCW4RpUXSA7FsG5iw9aM7LigQaoIoxp3ZVwcr5vI2_9sOUvVk9J02pu1eEV2qMQPWO1Abr3ly',
    //                       'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQa4k_wjzFNLG5GUJrM3LYbY3bSHSIdSuGF3XZrZgBz9-31n90P',
    //                       'https://m.media-amazon.com/images/I/71f6DRbcrsL._SY522_.jpg',
    //                       'https://books.google.co.in/books/content?id=cVxrouJeyU0C&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE72hwZM3UCXr38yUb3VEeldN7gLgvdduYA-woNt3U7lB2SMHcOGRYNiF2gzxuWzQSphyZVTDqILxS69HPb37auk9bpAN6gndKiAcAtyMFQPXnwnb8TfXFNpQZLMtRS4aAbpbxhsp',
    //                       'https://books.google.co.in/books/publisher/content?id=WbQmCwAAQBAJ&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73SZGeViSW6T5a8i2UaWd2KD6lONYtWDSCyH8M6OcEuc0WJzGaxLNqPeOY7TMMVsMKcj9hiiUUzGVc1do73EWwxwN1yIla8-4ol5RB_EY3Ibo0x1elv2SW8qG9P6umm9SwedZJd',
    //                       'https://books.google.co.in/books/content?id=DoJxdqUSBlYC&printsec=frontcover&img=1&zoom=1&edge=curl&imgtk=AFLRE73fk0uFo3wWOMaVXAPd8dWLXpeOVXHtvHOnnvkqGJt891jNbwaf8kjdYy7rHjHABAxQ1aVqEDdFxEO8-olNuIQyXJFNGgfxn-lmw3_qljxFRQxTypWWSocZ6WKwBLIfwj4fkqp_',
    //                       'https://books.google.co.in/books/publisher/content?id=xGxBEAAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE73AtFUYu_zwhRhTiuFe-osnLhYMnPRIDoQz_Dz0OSJlr7aIF4sKLKfrmrUKK8UwwwOTkO9oS8F3Tzfk4BHm9ta8GIbz3mMmoakaPhJ6yBOFbb6Nodn1vQpu5j_-vm1Uwz8_Zcp6',
    //                       'https://books.google.co.in/books/content?id=sfmp6gjZGP8C&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70xGFzHloB1UwROgNggy2CwaJIMHxHwHjojboRrfwRnoNl5uubc46BjV0CYMrUVgbpkeE1decy2o3YonwPyUbb-jt3WlshtQxIzt3K5ARwqYJqHZ9SpoQpktk3PhoeRRyAmqB0I',
    //                       'https://books.google.co.in/books/content?id=FodGfz5li5wC&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70PdDhnqaVaH6D2zjGUWQ9DjQtX6VBpiSpKUB8zSimKueKU7ewyMUWYmcXxwr8qtalG2wOoF5rojIji5lVW63vGb5j9PBUKPzHNmO5lPdJ-aWqKXRvLvmQTQNDp-asdS-Zp4khW',
    //                       'https://books.google.co.in/books/publisher/content?id=xYtIDwAAQBAJ&printsec=frontcover&img=1&zoom=1&imgtk=AFLRE70Fb_5kRd1q1hfzOJ4EPP34YSMGRJIvFO1E5BP9q4C3UzcJEIG09Jk57hWoIUEN4i0T1jcXBporS6qGOHIv_oq8HWdejM1PiM5B1lD9YM0FExQaKkd8OwkawVzO7WZf12Yyeos7'
     
     
    //  ];

  Widget build(BuildContext context) {
    var height=MediaQuery.sizeOf(context).height;
    var width=MediaQuery.sizeOf(context).width;

    void addedtocart(){
      
      setState(() {
        if (addcart==false){addcart=true;curindex++;}
      else{addcart=false;curindex--;}
      
      });
    }

    void increaseonly(){

      setState(() {
        curindex++;
      });

    }

      void decreaseonly(){

      setState(() {
        curindex--;
      });

    }

    Widget increaseno(){
      return GestureDetector(onTap: () {
        addedtocart();
      },
        child: Container(
          height: height*0.04,width: width*0.2,color: Colors.transparent,child:addcart==false?Text(''):Padding(
            padding: const EdgeInsets.only(left:20, ),
            child: GestureDetector(
              onTap: () {
                increaseonly();
              },
              child: Text('+',style: TextStyle(fontSize:30),)),
          ),
        ),
      );
    }


    Widget decreaseno(){

      return GestureDetector(onTap: () {
        addedtocart();
      },
        child: Container(
          height: height*0.04,width: width*0.2,color: Colors.transparent,child:addcart==false?Text(''):Padding(
            padding: const EdgeInsets.only(left:40,bottom:0 ),
            child: GestureDetector(
              onTap: () {
                decreaseonly();
              },
              child: Text('-',style: TextStyle(fontSize:40),)),
          ),
        ),
      );

    }

  


    
    
    // Widget detailedproduct(){
    //   return 
    // }
   


    return Scaffold(
      extendBodyBehindAppBar: true,
      // appBar: AppBar(backgroundColor: Colors.transparent,
      //   leading: IconButton(onPressed: (){}, icon:Icon(Icons.arrow_back,color: Colors.white,)),
      // title:Padding(
      //   padding: const EdgeInsets.only(left:50),
      //   child: Text('Product Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
      // ),),
      body:
      // ListView.builder(
      //   // scrollDirection: Axis.horizontal,
      //   itemCount: productimagesList.length,
      //   itemBuilder: (context,index)=>detailedproduct(index))
      
       Center(child: Column(
        children: [

          Container(height: height*1,width: width*1,decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('https://i.pinimg.com/564x/c3/1c/56/c31c56ebf4b6a3c643c2acf8865bfdee.jpg'),fit: BoxFit.cover)),
        child: Stack(children: [
          BackdropFilter(filter: ImageFilter.blur(sigmaX:15,sigmaY:15)),
          Container(height: height*1,width: width*1,decoration:BoxDecoration(gradient: LinearGradient(colors:[Color.fromARGB(255, 230, 238, 238).withOpacity(0.3),Color.fromARGB(255, 14, 13, 13).withOpacity(0.6)],begin: Alignment.topLeft,end: Alignment.bottomRight),),
          child: Column(children: [
            SizedBox(height:15,),
            Container(height: height*0.1,width: width*1,color: Colors.transparent,child: Row(children: [
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon:Icon(Icons.arrow_back,color: Colors.white,)),
              SizedBox(width: 80,),
              Text('${widget.Name}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
              Spacer(),
              Stack(alignment: Alignment.topRight,
                children: [IconButton(onPressed: (){}, icon:Icon(Icons.shopping_cart,color: Colors.white,size:41,),),CircleAvatar(radius:15,backgroundColor: Colors.black,child: Text('${curindex}',style: TextStyle(color: Colors.cyan),),)],)
            ],),)
            ,SizedBox(height: 65.4,),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(height: height*0.8,width: width*0.9,child: Column(children: [Container(height: height*0.4,width: width*0.9,
                decoration: BoxDecoration(image: DecorationImage(image: NetworkImage('${widget. productimages}'))),)],),
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage('')),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 0.6,color: Color.fromARGB(255, 212, 116, 196),)),
                  
                  ),
                  Padding(
                padding: const EdgeInsets.only(right:0,top:0),
                child: Container(height: height*0.41,width: width*1,decoration: BoxDecoration(color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35))),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:170),
                        child: Text('Product Details',style: TextStyle(fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.bold,fontSize:26,color: Color.fromARGB(255, 224, 176, 232)),),
                      ),
                                   Padding(
                padding: const EdgeInsets.only(right:200),
                child: Text('${widget.price}',style: TextStyle(fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,fontSize:16,color: Colors.pink[400]))
              ),
                 Container(height: height*0.24,width: width*0.8,color: Colors.transparent,
              child: Text('Books are physical or digital objects that contain written or printed information, often in the form of text and sometimes accompanied by illustrations, diagrams, or photographs. They serve as a medium for storing, preserving, and sharing knowledge, ideas, stories, and a wide range of human experiences'
              ,style:TextStyle(fontStyle:FontStyle.italic,fontWeight: FontWeight.bold,fontSize: 16) ,),)
            
            ,Container(
              child: Row(
                children: [
                  SizedBox(width:20,),
                  decreaseno(),
                  SizedBox(width: 3,),
                  SizedBox(height: height*0.05,width: width*0.5,
                    child: FloatingActionButton(onPressed: (){
                      addedtocart();
                    },backgroundColor: Color.fromARGB(255, 12, 12, 12), child:
                    addcart==false?Text('Add to cart',style: TextStyle(color: Colors.grey),):Text('Remove From Cart',style: TextStyle(color: Colors.red),))),
                increaseno()
                
                ],
              ),
            )
                    
                    
                    
                    ],
                  ),
               
                ),
              ),
              ],
              
            )
              
        



          ],),)
        ],),)
       
                   
      ],),),
    );
  }
}