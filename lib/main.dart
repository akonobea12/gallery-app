import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter_image_stack/flutter_image_stack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gallery App',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  //const HomeView({ Key? key }) : super(key: key);

  List<String> _images = [
    'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
    'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
    'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
  ];

  List<String> _images2 = [
    'https://images.unsplash.com/photo-1628191136272-08f5d3d9a6c0?ixid=MnwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
    'https://images.unsplash.com/photo-1631730486784-5456119f69ae?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=820&q=80',
    'https://images.unsplash.com/photo-1631605858153-896f22f42f2e?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=794&q=80',
    'https://images.unsplash.com/photo-1631715193954-68842ba0b843?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=752&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(245, 245, 245, 1),
        centerTitle: false,
        title: Text(
          'Gallery',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.camera,
              color: Colors.blue,
            ),
          )
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(20),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'Today',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1631580694058-d767583de7be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80'),
                    ),
                    title: Text(
                      'Akonobea',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: Colors.blue,
                        ),
                        Text('Kutunse,Ghana')
                      ],
                    ),
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1631621451042-522ca13a73f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
                    height: 218,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Material(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(35),
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '5.1M',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FlutterImageStack(
                            imageList: _images,
                            showTotalCount: false,
                            totalCount: 4,
                            itemRadius: 35, //radius of each image
                            itemCount:
                                4, //maximum number of images to be shown in stack
                            itemBorderWidth: 2, //border width around images
                          ),
                        ],
                      ),
                      Material(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(35),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.chat_bubble_fill,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '5M',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
             Card(
              color: Colors.white,
              margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
              child: Column(
                children: [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1631714222798-9b7ae46118b3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2468&q=80'),
                    ),
                    title: Text(
                      'Ransford',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    subtitle: Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14,
                          color: Colors.blue,
                        ),
                        Text('Kasoa,Ghana')
                      ],
                    ),
                  ),
                  Image.network(
                    'https://images.unsplash.com/photo-1631724533937-687e6e60aafe?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
                    height: 218,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Material(
                            color: Colors.grey.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(35),
                            child: Padding(
                              padding: EdgeInsets.all(16),
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    '6.8M',
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FlutterImageStack(
                            imageList: _images2,
                            showTotalCount: false,
                            totalCount: 4,
                            itemRadius: 35, //radius of each image
                            itemCount:
                                4, //maximum number of images to be shown in stack
                            itemBorderWidth: 2, //border width around images
                          ),
                        ],
                      ),
                      Material(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(35),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Row(
                            children: [
                              Icon(
                                CupertinoIcons.chat_bubble_fill,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                '6.5M',
                                style: TextStyle(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class HomeView extends StatelessWidget { 
//    @override
//   List<String> _images = [
//     'https://images.unsplash.com/photo-1593642532842-98d0fd5ebc1a?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=2250&q=80',
//     'https://images.unsplash.com/photo-1612594305265-86300a9a5b5b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80',
//     'https://images.unsplash.com/photo-1612626256634-991e6e977fc1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1712&q=80',
//     'https://images.unsplash.com/photo-1593642702749-b7d2a804fbcf?ixid=MXwxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=80'
//   ];

 
//   Widget Build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Color.fromRGBO(245, 245, 245, 1),
//         centerTitle: false,
//         title: Text(
//           'Gallery',
//           style: TextStyle(color: Colors.black),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               CupertinoIcons.camera,
//               color: Colors.blue,
//             ),
//           )
//         ],
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(20),
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: Text(
//               'Today',
//               style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
//             ),
//           ),
//         ),
//       ),
//       body: SafeArea(
//         child: ListView(
//           padding: EdgeInsets.all(16),
//           children: [
//             Card(
//               color: Colors.white,
//               margin: EdgeInsets.fromLTRB(16, 10, 16, 10),
//               child: Column(
//                 children: [
//                   ListTile(
//                     leading: CircleAvatar(
//                       backgroundImage: NetworkImage(
//                           'https://images.unsplash.com/photo-1631580694058-d767583de7be?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=80'),
//                     ),
//                     title: Text(
//                       'Akonobea',
//                       style:
//                           TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
//                     ),
//                     subtitle: Row(
//                       children: [
//                         Icon(
//                           Icons.location_on,
//                           size: 14,
//                           color: Colors.blue,
//                         ),
//                         Text('Kutunse,Ghana')
//                       ],
//                     ),
//                   ),
//                   Image.network(
//                     'https://images.unsplash.com/photo-1631621451042-522ca13a73f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
//                     height: 218,
//                     width: MediaQuery.of(context).size.width,
//                     fit: BoxFit.cover,
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   Row(
//                     children: [
//                       Row(
//                         children: [
//                           Material(
//                             color: Colors.grey.withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(35),
//                             child: Padding(
//                               padding: EdgeInsets.all(16),
//                               child: Row(
//                                 children: [
//                                   Icon(
//                                     Icons.favorite,
//                                     color: Colors.red,
//                                   ),
//                                   SizedBox(
//                                     width: 5,
//                                   ),
//                                   Text(
//                                     '233',
//                                     style: TextStyle(fontSize: 14),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(
//                             width: 10,
//                             ),
//                             FlutterImageStack(
//                               imageList:_images,
//                               showTotalCount:false,
//                               totalCount:4,
//                               itemRadius:35,//radius of each image
//                               itemCount: 4,//maximum number of images to be shown in stack
//                               itemBorderWidth: 2,//border width around images
//                             ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }




//  }

