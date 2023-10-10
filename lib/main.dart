import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Homepage()
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 256,
              width: 999,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSn5SESYbkEi-aexmvIYHl98cclqiii7GHyRA&usqp=CAU"),
                      height:   256,
                      width: 999,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),

              ),

            ),
            SizedBox(
              height: 500,
              width: 567,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: Card(
                    color: Colors.white,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: TextButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>bottom()));
                            },style: TextButton.styleFrom(

                              backgroundColor: Colors.green,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32)
                              ),
                            ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Sign in",style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                ),
                              ),
                            ),
                          ),
                  Text("OR"),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextButton(onPressed: (){
                    },style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32)
                        ),

                    ), child: ClipRRect(
                        child: Text("Sign up",style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                    )),
                  ),
                      ],
                  ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class bottom extends StatefulWidget {
  const bottom({super.key});

  @override
  State<bottom> createState() => _bottomState();
}

class _bottomState extends State<bottom> {
  var li=[home(),click(),info(),profile()];
  int idx=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: li[idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap:(index){
          setState(() {
            idx=index;
          });
        } ,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.heart_broken_outlined),label:"wishlist"),
          BottomNavigationBarItem(icon: Icon(Icons.shop),label: "shop"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "profile"),
        ],
      ),
    );
  }
}
class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation:23 ,
        shadowColor: Colors.black,
        leading: Icon(Icons.menu),
        title: Text("Plant Store"),
        centerTitle: true,
        actions: [
          Icon(Icons.search),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 221,
              width: 654,
              child: Image(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHGSH3wPrL-7h4S3S1rZuKTf42qc6_tFdC-w&usqp=CAU"),
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 145),
                    child: Text("see more",style: TextStyle(
                      color: Colors.green,
                    ),),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Image(image: NetworkImage("data:image/jpeg;base64,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"),
                        fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Snake Plant",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("70.00"),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Image(image: NetworkImage("data:image/jpeg;base64,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"),
                          fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Snake Plant",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("70.00"),
                        ),
                      ],
                    ),
                  ),
                  Card(
                    color: Colors.grey,
                    child: Column(
                      children: [
                        Image(image: NetworkImage("data:image/jpeg;base64,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"),
                          fit: BoxFit.fill,),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("Snake Plant",style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("70.00"),
                        ),
                      ],
                    ),
                  ),
                    ],
                  ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Text("Category",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    height: 64,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100),
                              child: Text("Indoor")),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Text("outdoor")),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 140,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Text("decorative")),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Text("Indoor")),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Text("Indoor")),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 100,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        color: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Text("Indoor")),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Recommended",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 145),
                    child: Text("see more",style: TextStyle(
                      color: Colors.green,
                    ),),
                  ),
                ],
              ),
            ),
    SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Card(
            child: Column(
              children: [
                Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                fit: BoxFit.fill,
                ),
                TextButton(onPressed: (){

                }, child: Text("snake plant",style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),)),
                Text("70.00",style: TextStyle(
                  color: Colors.black,
                ),),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                  fit: BoxFit.fill,
                ),
                TextButton(onPressed: (){

                }, child: Text("snake plant",style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),)),
                Text("70.00",style: TextStyle(
                  color: Colors.black,
                ),),
              ],
            ),
          ),
          Card(
            child: Column(
              children: [
                Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                  fit: BoxFit.fill,
                ),
                TextButton(onPressed: (){

                }, child: Text("snake plant",style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),)),
                Text("70.00",style: TextStyle(
                  color: Colors.black,
                ),),
              ],
            ),
          ),
        ],
      ),
    ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore",style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(left: 145),
                    child: Text("see more",style: TextStyle(
                      color: Colors.green,
                    ),),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Column(
                      children: [
                        Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                          fit: BoxFit.fill,
                        ),
                        TextButton(onPressed: (){

                        }, child: Text("snake plant",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),)),
                        Text("70.00",style: TextStyle(
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  ),
                  Card(
                    child: Column(
                      children: [
                        Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                          fit: BoxFit.fill,
                        ),
                        TextButton(onPressed: (){

                        }, child: Text("snake plant",style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),)),
                        Text("70.00",style: TextStyle(
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  ),
                   Card(
                      child: Column(
                        children: [
                          Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                            fit: BoxFit.fill,
                          ),
                          TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>click()));
                          }, child: Text("snake plant",style: TextStyle(
                            fontSize: 14,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),)),
                          Text("70.00",style: TextStyle(
                            color: Colors.black,
                          ),),
                        ],
                      ),
                    ),

                ],
              ),
            ),
       ]
    ),
    ),
    );
  }
}
class click extends StatefulWidget {
  const click({super.key});

  @override
  State<click> createState() => _clickState();
}

class _clickState extends State<click> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(
          Icons.arrow_back_ios,
        )),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(
                height: 267,
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                            fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                 TextButton(onPressed: (){}, child:Text("snake plant",style: TextStyle(color: Colors.black,
                                 fontWeight: FontWeight.bold,fontSize: 14),)),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star_border),
                                    ],
                                  ),
                                  Text("70.00"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 267,
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  TextButton(onPressed: (){}, child:Text("snake plant",style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,fontSize: 14),)),
                                  Row(
                                    children: [
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star_border),
                                    ],
                                  ),
                                  Text("70.00"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 267,
                width: 450,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                children: [
                                  TextButton(onPressed: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>info()));
                                  }, child:Text("snake plant",style: TextStyle(color: Colors.black,
                                      fontWeight: FontWeight.bold,fontSize: 14),)),
                                  Row(
                                    children: [
                                     Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star),
                                      Icon(Icons.star_border),
                                    ],
                                  ),
                                  Text("70.00"),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class info extends StatefulWidget {
  const info({super.key});

  @override
  State<info> createState() => _infoState();
}

class _infoState extends State<info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Center(
              child: Image(
                image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4fD4u22uQclqXLzdR4dtHrti3nqKPa8I_LA&usqp=CAU"),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Snake Plant",style: TextStyle(
              fontWeight: FontWeight.bold,
            ),),
          ),

               Padding(
                 padding: const EdgeInsets.only(left: 132),
                 child: Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star_border),
                    ],
                  ),
               ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Land plants are multicellular organisms that can be distinguished from other living things by a number of characteristics: They make their own food.\n Plants are photosynthetic and contain a green pigment called chlorophyll, \n which enables plants to convert energy from the sun into food.\n Plants store their food as starch"),
          ),
          

             Card(
               color: Colors.green,
               child: TextButton(onPressed: (){
                 
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));
               }, child: Center(
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.shopping_cart_checkout),
                    Text("Add to Cart",style: TextStyle(
                      color: Colors.black,
                      backgroundColor: Colors.green,

                    ),),
                  ],
            ),
               )),
             ),

        ],
      ),
    );
  }
}
class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  int x=0;

  void increment(){
      x++;
}
void decrement(){
    x--;
}
  void cal(){
   print(x*10);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child:SizedBox(
              height: 254,
              width: 621,
              child: Card(
                child:SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image(image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTt0MOKmmkcM_Ia6JJBWiQ_7L8sUbeTdZhLahQ3kGNyoc5e_0U65sbzvukJ46NShOVqSq8&usqp=CAU"),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text("Snake Plant"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Text("70.00"),
                                  IconButton(onPressed: (){
                                    setState(() {
                                      decrement();
                                    });
                                  },icon: Icon(Icons.home_mini)),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text("$x"),
                                  ),
                                  IconButton(onPressed: (){
                                    setState(() {
                                      increment();
                                    });
                                  }, icon: Icon(Icons.add_circle)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Sub Total",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),),
                ),
                Text("${70.00*x}",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Courier",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),),
                ),
                Text("10.00",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 23,
                ),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text("Total",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 23,
                  ),),
                ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("${80.00*x}",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23,
              ),),
            ),
              ],
            ),
          ),
          SizedBox(
            height: 45,
            width: 111,
            child: Card(
              color: Colors.green,
              child: Center(
                child: Text("Change",style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ),
          TextButton(onPressed: (){
            Navigator.pop(context);
            Navigator.pop(context);
            Navigator.pop(context);
          }, child: Text("Continue Shopping",style: TextStyle(
            fontSize: 22,
          ),))
        ],
      ),
    );
  }
}
class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Image(

                  image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRaIIYuON_fohLcVojlv5yfg2WJipyoo_AKMokzqxUDaYuCiOpsRCkrolgiO4yecaySfgQ&usqp=CAU"),
                ),
                Text("sindhu",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),),
                Text("sindhu@gmail.com",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),),
                Text("         500 points            |                 30.00",style: TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    ),),
              ],
            ),
          ),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:2.0),
                    child: Text("My Account",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Mobile",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("6879905809"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Membership",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),),
                  ),
                  Text("Gold"),
                  Padding(
                    padding: const EdgeInsets.only(left:2.0),
                    child: Text("Personal Information",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("Address",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("street ,2456"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Text("City",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),),
                  ),
                  Text("NewYork"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}



