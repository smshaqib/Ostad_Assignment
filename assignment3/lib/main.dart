import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Bag',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
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
  int quantity = 0;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Side by Side Layout'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: AspectRatio(
                aspectRatio: 1, // Aspect ratio of 1:1
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://via.placeholder.com/150', // Smaller image URL
                      ),
                      fit: BoxFit.cover, // Adjusted fit to cover the entire container
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 16),
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
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: _decrementQuantity,
                          child: Icon(Icons.remove),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16),
                            
                          ),
                        ),
                        Text(
                          '$quantity',
                          style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        ElevatedButton(
                          onPressed: _incrementQuantity,
                          child: Icon(Icons.add),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(16),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
