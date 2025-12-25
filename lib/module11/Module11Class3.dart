import 'package:batch14/module11/widgets/neomorphic_container.dart';
import 'package:flutter/material.dart';

class Module11class3 extends StatelessWidget {
  const Module11class3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Homes",
                        style: Theme.of(context).textTheme.headlineLarge!
                            .copyWith(fontWeight: FontWeight.w600, color: Colors.black54),
                      ),
                      Text(
                        "Lorem Ipsum with text",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Stack(
                    children: [
                      NeomorphicContainer(
                        height: 60,
                        borderRadius: BorderRadius.circular(100),
                        backgroundColor: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image(
                            image: NetworkImage(
                              'https://juststickers.in/wp-content/uploads/2019/01/flutter-326x326.png',
                            ),
                          ),
                        ),
                      ),

                      Positioned(
                        top: 2,
                        right: 3,
                        child: Container(
                          height: 16,
                          width: 16,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: NeomorphicContainer(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.tv_outlined,
                              color: Colors.grey,
                              size: 30,
                            ),
                            const Spacer(),
                            Text(
                              'Smart Tv',
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: NeomorphicContainer(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.wifi, color: Colors.grey, size: 30),
                                const Spacer(),
                                Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(100),
                                  ),
                                ),
                              ],
                            ),
                            const Spacer(),
                            Text(
                              'Wifi',
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: NeomorphicContainer(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                      ),

                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Icon(
                              Icons.thermostat,
                              color: Colors.grey,
                              size: 30,
                            ),
                            const Spacer(),
                            Text(
                              'Temperature',
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: NeomorphicContainer(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: .start,
                          children: [
                            Icon(
                              Icons.add_circle_outlined,
                              color: Colors.grey,
                              size: 30,
                            ),
                            const Spacer(),
                            Text(
                              'Add more',
                              style: Theme.of(context).textTheme.bodyLarge!
                                  .copyWith(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 48),

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Temperature",
                        style: Theme.of(context).textTheme.titleLarge!.copyWith(
                          color: Colors.black54,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "Lorem Ipsum is simply dummy",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.grey
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Text(
                    '20° C',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                      fontSize: 36,
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 16,),
              
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.blue.shade50,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white.withOpacity(0.9),
                      offset: const Offset(-6, -6),
                      blurRadius: 10,
                    ),
                    BoxShadow(
                      color: Colors.blue.withOpacity(0.2),
                      offset: const Offset(4, 4),
                      blurRadius: 10,
                    ),
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.deepOrangeAccent,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16), topLeft: Radius.circular(16))
                      ),
                    ),
                  ),
                ),
              ),
              


            ],
          ),
        ),
      ),



      bottomNavigationBar:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 20),
        child: Row(
          mainAxisAlignment: .spaceBetween,
          children: [
            NeomorphicContainer(height: 70, child: Icon(Icons.dashboard, color: Colors.grey,)),
            NeomorphicContainer(height: 70, child: Icon(Icons.person, color: Colors.grey,)),
            NeomorphicContainer(height: 70, child: Icon(Icons.sunny, color: Colors.grey,)),
            NeomorphicContainer(height: 70, child: Icon(Icons.notifications, color: Colors.grey,)),
          ],
        ),
      ),
    );
  }
}
