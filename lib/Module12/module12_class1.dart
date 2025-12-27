import 'package:flutter/material.dart';

class Module12Class1 extends StatelessWidget {
  const Module12Class1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Module 12 Class 1")),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(color: Colors.red),
                    ),
                    Positioned(
                      left: 30,
                      right: 30,
                      top: 30,
                      bottom: 30,
                      child: Container(
                        height: 150,
                        width: 150,
                        decoration: BoxDecoration(color: Colors.green.shade900),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Stack(
                  children: [
                    SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: Image(
                        image: NetworkImage(
                          'https://media.istockphoto.com/id/104731717/photo/luxury-resort.jpg?s=612x612&w=0&k=20&c=cODMSPbYyrn1FHake1xYz9M8r15iOfGz9Aosy9Db7mI=',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 30,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.green.shade50,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              'Book Now ',
                              style: TextStyle(color: Colors.green),
                            ),
                          ),
                        ),
                        const Spacer(),

                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 10),
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.blue.shade100),
                  child: Center(
                    child: Text(
                      'List View',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,

                    ),
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Text(
                          '# Item $index',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        );
                      },
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: 10,
                    ),
                  ),
                ),

                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.blue.shade100),
                  child: Center(
                    child: Text(
                      'Grid View',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green.shade900,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      shape: BoxShape.rectangle,

                    ),
                    child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.blue.shade300,
                            child: Center(child: Text('Item $index',
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16),),),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
