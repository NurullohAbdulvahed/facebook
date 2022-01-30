import 'package:difficult_themes/friends_page.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),

      home: ChatPage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        ChatPage.id:(context)=>ChatPage(),
        FriendsPage.id:(context)=>FriendsPage(),
      },
    );
  }
}



// class HomePage extends StatefulWidget {
//   static final String id = 'HomePage';
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
//
//   List<Facebook> list = [
//     Facebook("assets/images/watch.jpeg", "assets/images/yunus.jpg", "Ali"),
//     Facebook("assets/images/watch.jpeg", "assets/images/yunus.jpg", "Nurulloh"),
//     Facebook("assets/images/watch.jpeg", "assets/images/yunus.jpg", "Asadulloh"),
//     Facebook("assets/images/watch.jpeg", "assets/images/yunus.jpg", "Zubayr"),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade300,
//       appBar: AppBar(
//         bottom: PreferredSize(
//           preferredSize: Size.fromHeight(55),
//           child: Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: Row(
//               children: [
//                 Expanded(
//                   child: Container(
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(25),
//                         color: Colors.green,
//                         image: DecorationImage(
//                             fit: BoxFit.cover,
//                             image: AssetImage("assets/images/yunus.jpg")
//                         )
//                     ),
//                     height: 50,
//                     width: 50,
//                   ),
//                 ),
//                 SizedBox(width: 10,),
//                 Expanded(
//                   flex: 6,
//                   child: Container(
//                     height: 40,
//                     width: double.infinity,
//                     child: TextFormField(
//                       decoration: InputDecoration(
//                           contentPadding: EdgeInsets.only(top: 10,left: 10),
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25)
//                           ),
//                           filled: true,
//                           fillColor: Colors.white,
//                           hintText: "What`s on your mind?"
//
//                       ),
//                       onChanged: (value){},
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//         elevation: 0,
//         backgroundColor: Colors.white,
//         title:Text("facebook",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 25),),
//         actions: [
//           Container(
//             padding: EdgeInsets.only(right: 10),
//             child: Icon(Icons.search,color: Colors.grey.shade700,),
//           ),
//           Container(
//             padding: EdgeInsets.only(right: 10),
//             child: Icon(Icons.camera_alt,color: Colors.grey.shade700,),
//           ),
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//
//             //#live
//             Container(
//               height: 50,
//               width: double.infinity,
//               color: Colors.white,
//               child: Row(
//                 children: [
//
//                   Expanded(
//                       child: Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               child: Icon(Icons.video_call,color: Colors.red,),
//                             ),
//                             SizedBox(width: 5,),
//                             Container(
//                               child: Text("Live",style: TextStyle(color: Colors.black),),
//                             ),
//                           ],
//                         ),
//                       )
//                   ),
//                   VerticalDivider(
//                     indent: 12,
//                     endIndent: 12,
//                     color: Colors.grey,
//                   ),
//                   Expanded(
//                       child: Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               child: Icon(Icons.image,color: Colors.green,),
//                             ),
//                             SizedBox(width: 5,),
//                             Container(
//                               child: Text("Photo",style: TextStyle(color: Colors.black),),
//                             ),
//                           ],
//                         ),
//                       )
//                   ),
//                   VerticalDivider(
//                     indent: 12,
//                     endIndent: 12,
//                     color: Colors.grey,
//                   ),
//                   Expanded(
//                       child: Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Container(
//                               child: Icon(Icons.location_on_rounded,color: Colors.red,),
//                             ),
//                             SizedBox(width: 5,),
//                             Container(
//                               child: Text("Check in",style: TextStyle(color: Colors.black),),
//                             ),
//                           ],
//                         ),
//                       )
//                   )
//                 ],
//               ),
//             ),
//             SizedBox(height: 12,),
//             //#profileGrid
//             Card(
//               child: Container(
//                 padding: EdgeInsets.all(10),
//                 child: GridView.builder(
//                   itemCount: list.length,
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 1,
//                       //crossAxisSpacing: 20,
//                       mainAxisSpacing: 20,
//                       childAspectRatio: 1.5
//                   ),
//                   itemBuilder: (BuildContext context, int index) {
//                     return buildContainer(index);
//                   },
//
//                 ),
//                 width: double.infinity,
//                 height: MediaQuery.of(context).size.height*0.25,
//                 color: Colors.white,
//
//               ),
//             ),
//             SizedBox(height: 10,),
//             Container(
//                 color: Colors.white,
//                 height: MediaQuery.of(context).size.height,
//                 width: double.infinity,
//                 child: ListView(
//                   physics: ScrollPhysics(),
//                   shrinkWrap: true,
//                   children: [
//                     ListTile(
//                       title: Container(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Container(
//                               child:Text("Mubashshir Ahmad"),
//                             ),
//                             Row(
//                               children: [
//                                 Container(
//                                   child: Icon(FontAwesomeIcons.ellipsisH),
//                                 ),
//                                 SizedBox(width: 20,),
//                                 Container(
//                                   child: Icon(FontAwesomeIcons.times),
//                                 )
//                               ],
//                             )
//                           ],
//                         ),
//                       ),
//                       subtitle: Text('6h'),
//                       leading: CircleAvatar(
//                         backgroundColor: Colors.blue,
//                         radius: 20,
//
//                       ),
//                       // trailing: Icon(FontAwesomeIcons.ellipsisH),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 5,left: 15,right: 10),
//                       child: Container(
//                         height: 50,
//                         width: double.infinity,
//                         child: Text('Кўпчилик "Мамлакатлар таназзули сабаблари" китобини сўраган эди. Ниҳоят, китоб бугундан яна сотувда:'),
//                       ),
//                     ),
//                     Container(
//                       height: MediaQuery.of(context).size.height/2,
//                       width: double.infinity,
//                       color: Colors.red,
//                     ),
//                     Container(
//                       padding: EdgeInsets.all(10),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//
//                                 height: 30,
//                                 width: 30,
//                                 child: Icon(FontAwesomeIcons.solidHeart,size: 15,color: Colors.white,),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.red
//                                 ),
//                               ),
//                               Container(
//
//                                 height: 30,
//                                 width: 30,
//                                 child: Icon(FontAwesomeIcons.solidThumbsUp,size: 15,color: Colors.white,),
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Colors.blue
//                                 ),
//                               ),
//                               SizedBox(width: 8,),
//                               Container(
//                                 child: Text("100"),
//                               )
//
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Text("80 comments"),
//                               )
//                             ],
//                           )
//                         ],
//                       ),
//                     ),
//                     Divider(
//                       color: Colors.grey,
//                       thickness: 1,
//                       indent: 15,
//                       endIndent: 12,
//                     ),
//                     Container(
//                       padding: EdgeInsets.only(left: 30,right: 30,bottom: 5,top: 5),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Row(
//                             children: [
//                               Container(
//                                 child: Icon(FontAwesomeIcons.solidThumbsUp,color: Colors.blue,),
//                               ),
//                               SizedBox(width: 10,),
//                               Container(
//                                 child: Text("Like"),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Icon(FontAwesomeIcons.commentAlt),
//                               ),
//                               SizedBox(width: 10,),
//                               Container(
//                                 child: Text("Comment"),
//                               )
//                             ],
//                           ),
//                           Row(
//                             children: [
//                               Container(
//                                 child: Icon(FontAwesomeIcons.share),
//                               ),
//                               SizedBox(width: 10,),
//                               Container(
//                                 child: Text("Share"),
//                               )
//                             ],
//                           ),
//
//                         ],
//                       ),
//                     ),
//                     Divider(
//                       color: Colors.grey,
//                       thickness: 1,
//                       indent: 15,
//                       endIndent: 12,
//                     ),
//                   ],
//                 )
//             )
//
//           ],
//         ),
//       ),
//     );
//   }
//
//   Container buildContainer(int index) {
//     return Container(
//       padding: EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image:AssetImage(list[index].storyImage)
//         ),
//         borderRadius: BorderRadius.circular(20),
//         color: Colors.red,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             child: Container(
//               height: 35,
//               width: 35,
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.blue.shade700),
//                   borderRadius: BorderRadius.circular(20),
//                   image: DecorationImage(
//                       image: AssetImage(list[index].profilImage)
//                   ),
//                   color: Colors.orange
//               ),
//             ),
//           ),
//           Container(
//             child: Text(list[index].nameUser,style: TextStyle(color: Colors.white),),
//           )
//         ],
//       ),
//
//     );
//   }
// }
// class Facebook{
//   String storyImage;
//   String profilImage;
//   String nameUser;
//
//   Facebook(this.storyImage,this.profilImage,this.nameUser);
// }
// class PostClass{
//   String postImage;
//   String posterFullName;
//   String postTime;
//
//
// }

