import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(



      debugShowCheckedModeBanner: false,
      home: SideBySidePage(),
    );
  }
}

class SideBySidePage extends StatefulWidget {
  @override
  _SideBySidePageState createState() => _SideBySidePageState();
}

class _SideBySidePageState extends State<SideBySidePage> {
  int quantity = 0, quantity2 = 0, quantity3 =0;



  void _incrementQuantity() {
    setState(() {
      quantity++;
    });
  }

  void _decrementQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
      }
    });
  }



  void _incrementQuantity2() {
    setState(() {
      quantity2++;
    });
  }

  void _decrementQuantity2() {
    setState(() {
      if (quantity2 > 0) {
        quantity2--;
      }
    });
  }



  void _incrementQuantity3() {
    setState(() {
      quantity3++;
    });
  }

  void _decrementQuantity3() {
    setState(() {
      if (quantity3 > 0) {
        quantity3--;
      }
    });
  }


  @override
  Widget build(BuildContext context) {

    int ans = quantity*20 + quantity2*10 + quantity3*5;


    return Scaffold(
      appBar: AppBar(
        title: Text('My Bag'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [

            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1, // Aspect ratio of 1:1
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(

                          image: DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?q=80&w=880&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D/150', // Smaller image URL
                            ),
                            fit: BoxFit.cover, // Adjusted fit to cover the entire container
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2, // Adjusted flex value for larger container
                    child: Container(

                      width: 10,
                      height: 120,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(



                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [



                          Text('Salad', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),



                          Text('Color: Green, Size 36',),

                          Row(
                            children: [

                              ElevatedButton(
                                onPressed: _decrementQuantity,
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(5,5)

                                ),
                              ),
                              Text(
                                '$quantity',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              ElevatedButton(
                                onPressed: _incrementQuantity,
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(5,5)

                                ),
                              ),

                              SizedBox(width: 70,),

                              Text('20\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),

            SizedBox(
              height: 20,
            ),

            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1, // Aspect ratio of 1:1
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(

                          image: DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1565299624946-b28f40a0ae38?q=80&w=962&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D/150', // Smaller image URL
                            ),
                            fit: BoxFit.cover, // Adjusted fit to cover the entire container
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2, // Adjusted flex value for larger container
                    child: Container(

                      width: 10,
                      height: 120,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(



                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [



                          Text('Pizza', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),



                          Text('Color: Yellow, Size 12',),

                          Row(
                            children: [

                              ElevatedButton(
                                onPressed: _decrementQuantity2,
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(5,5)

                                ),
                              ),
                              Text(
                                '$quantity2',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),

                              ElevatedButton(
                                onPressed: _incrementQuantity2,
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(5,5)

                                ),
                              ),

                              SizedBox(width: 70,),

                              Text('10\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),

            SizedBox(
              height: 20,
            ),

            Container(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: AspectRatio(
                      aspectRatio: 1, // Aspect ratio of 1:1
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(

                          image: DecorationImage(
                            image: NetworkImage(
                              'https://images.unsplash.com/photo-1565299507177-b0ac66763828?q=80&w=844&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D/150', // Smaller image URL
                            ),
                            fit: BoxFit.cover, // Adjusted fit to cover the entire container
                          ),
                        ),
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 2, // Adjusted flex value for larger container
                    child: Container(

                      width: 10,
                      height: 120,
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        
                        

                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,


                        children: [


                          
                          Text('Burger', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),),


                          
                          Text('Color: Red, Size 12',),

                          Row(
                            children: [

                              ElevatedButton(
                                onPressed: _decrementQuantity3,
                                child: Icon(Icons.remove),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(5,5)

                                ),
                              ),
                              Text(
                                '$quantity3',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                                ),
                              ),

                              ElevatedButton(
                                onPressed: _incrementQuantity3,
                                child: Icon(Icons.add),
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: CircleBorder(),
                                    padding: EdgeInsets.all(5),
                                    minimumSize: Size(5,5)

                                ),
                              ),

                              SizedBox(width: 70,),

                              Text('5\$',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

            ),

            SizedBox(
              height: 160,
            ),
            
            Row(
              
              children: [
                Text('Total Amount: ',
                  style: TextStyle(
                      fontSize: 16 ,
                      fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(width: 185,),

                Text(

                  '$ans\$',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            ElevatedButton(


                onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Congratulations! You have Purchased!'),
                      duration: Duration(seconds: 1), // Duration for which snackbar will be visible
                    ),
                  );
                },

                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                  backgroundColor: Colors.red,// Adjust padding as needed
                ),
                child: Text('CHECK OUT',style: TextStyle(color: Colors.white),),

            )
          ],
        ),

      ),
    );
  }
}
