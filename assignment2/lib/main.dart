import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Photo Gallery',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,

        leading: Container(
          width: 40, // Set the width of the container
          height: 40, // Set the height of the container
          margin: const EdgeInsets.all(8.0), // Add margin to position the container within the AppBar
          decoration: BoxDecoration(
            color: Colors.green.shade300, // Set background color for the Container
            borderRadius: BorderRadius.circular(10.0), // Make the container rounded
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              // Navigate to another page

            },
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                // Do nothing
              },
            ),
          ),
        ],
      ),


      body: Container(
        alignment: Alignment.center,
        height: 850,
        width: 500,
        child: SingleChildScrollView(

            child: GridView.count(
              crossAxisCount: 2, // Maximum of 2 buttons in a row
              mainAxisSpacing: 0, // Spacing between rows
              crossAxisSpacing: 0, // Spacing between columns
              childAspectRatio: 1.2, // Aspect ratio to maintain for each child
              physics: const NeverScrollableScrollPhysics(), // Disable GridView scrolling
              shrinkWrap: true,

              children: [

                _buildImageButton2('assets/img.png',context),
                _buildImageButton('assets/img_1.png',context),
                _buildImageButton('assets/img_2.png',context),
                _buildImageButton('assets/img_3.png',context),
                _buildImageButton('assets/img_4.png',context),
                _buildImageButton('assets/img_5.png',context),
                _buildImageButton('assets/img_6.png',context),
                _buildImageButton('assets/img_7.png',context),

              ],

            ),
          ),
      ),

    );
  }
  Widget _buildImageButton(String imagePath, BuildContext context){
    return GestureDetector(
      onTap: () {

      },
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover, // Fill the container without distorting the image
      ),
    );
  }
  Widget _buildImageButton2(String imagePath, BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AnotherPage()),
        );
      },
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover, // Fill the container without distorting the image
      ),
    );
  }



}

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text(
          'Photo Gallery',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        centerTitle: true,

        leading: Container(
          width: 40, // Set the width of the container
          height: 40, // Set the height of the container
          margin: const EdgeInsets.all(8.0), // Add margin to position the container within the AppBar
          decoration: BoxDecoration(
            color: Colors.green.shade300, // Set background color for the Container
            borderRadius: BorderRadius.circular(10.0), // Make the container rounded
            boxShadow: [
              BoxShadow(
                color: Colors.green.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.white,
            ),
            onPressed: () {
              // Navigate to another page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Home()),
              );
            },
          ),
        ),

        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                // Do nothing
              },
            ),
          ),
        ],
      ),



      body: Center(

        child: Column(
            children: [
              Container(
                height: 300,
                width: 500,
                alignment: Alignment.center,

                child: Image.asset(
                  'assets/img.png',
                  alignment: Alignment.center,

                  fit: BoxFit.cover, // adjust the fit as per your requirement
                ),
              ),

              Container(
                  height:40,
                  width: 370,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                      'Mood With Nature',
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23),

                  )
              ),

              Container(
                  height:50,
                  width: 370,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Hello this is Text Hello this is Text Hello this is Text Hello this is Text Hello this is Text Hello this is Text',
                    style: TextStyle( fontSize: 14 ),

                  )
              ),

              SizedBox(

                height:40,
                width: 370,

                child: ElevatedButton(


                  onPressed: () {
                    // Add your button action here
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green, // Set background color to green
                    ),



                    fixedSize: MaterialStateProperty.all<Size>(
                      const Size(150, 50), // Set the width and height of the button
                    ),
                  ),
                  child: const Text(

                    'See More',

                    style: TextStyle(color: Colors.white, fontSize: 20),

                  )
                ),
              ),

              Container(

                  height:40,
                  width: 370,
                  alignment: Alignment.centerLeft,
                  child: const Text(
                    'Suggestions',
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green, fontSize: 20),

                  )


              ),


              Row(
                  children: [
                    Container(
                      height: 180,
                      width: 180,
                      alignment: Alignment.centerRight,

                      child: Image.asset(
                        'assets/img_5.png',
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover, // adjust the fit as per your requirement
                      ),

                    ),

                    Container(
                      height: 180,
                      width: 180,
                      alignment: Alignment.centerRight,

                      child: Image.asset(
                        'assets/img_4.png',
                        height: double.infinity,
                        width: double.infinity,
                        fit: BoxFit.cover, // adjust the fit as per your requirement
                      ),

                    ),

                  ]


              )


            ]


        ),
      ),



    );
  }
}
