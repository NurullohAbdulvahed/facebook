import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class FriendsPage extends StatefulWidget {
  static final String id = '';
  const FriendsPage({Key? key}) : super(key: key);

  @override
  _FriendsPageState createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     appBar: AppBar(
       backgroundColor: Colors.white,
       elevation: 0,
       title: Container(
         child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Row(
               children: [
                 Container(
                   height: 40,
                   width: 40,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/qashqir.jpg")
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   child: Text("People",style: TextStyle(color: Colors.black,fontSize: 25),),
                 )
               ],
             ),
             Row(
               children: [
                 Container(
                   height: 40,
                   width: 40,
                   decoration: BoxDecoration(
                     color: Colors.grey.shade300,
                     borderRadius: BorderRadius.circular(30)
                   ),
                   child: IconButton(
                     icon: Icon(FontAwesomeIcons.solidCommentDots,color: Colors.black,size: 19),
                     onPressed: (){},
                   ),
                 ),
                 SizedBox(width: 10,),
                 Container(
                   height: 40,
                   width: 40,
                   decoration: BoxDecoration(
                       color: Colors.grey.shade300,
                       borderRadius: BorderRadius.circular(30)
                   ),
                   child: IconButton(
                     icon: Icon(FontAwesomeIcons.userPlus,color: Colors.black,size: 19,),
                     onPressed: (){},
                   ),
                 )
               ],
             )
           ],
         ),
       ),
     ),
     body: SingleChildScrollView(
       child: Padding(
         padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 8),
         child: Column(
           children: [
             //#search
             Container(
               height: 36,
               width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.black.withOpacity(0.05)
               ),
               child: TextField(
                 decoration: InputDecoration(
                     border: InputBorder.none,
                     hintText: "Search",
                     hintStyle: TextStyle(color: Colors.grey.shade600),
                     prefixIcon: Icon(Icons.search)),
               ),
             ),
             Container(
               height: 72,
               width: MediaQuery.of(context).size.width,
               child: Row(
                 children: [
                   Row(
                     children: [
                       Container(
                         alignment: Alignment.center,
                         child: Icon(Icons.add,size: 20,),
                         height: 40,
                         width: 40,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(30),
                           color: Colors.grey.shade200
                         ),
                       )
                     ],
                   ),
                   SizedBox(width: 10,),
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(

                         child: Text('Your Story',style: TextStyle(color: Colors.black87
                             ,fontWeight: FontWeight.bold),),
                       ),
                       Container(
                         child: Text('Add to your story',style: TextStyle(color: Colors.grey),),
                       ),
                     ],
                   )
                 ],
               ),
             ),
             Container(
               child: ListView(
                 children: [
                   Container(
                     child: ListTile(
                       title: Text("Martha Craig"),
                       subtitle: CircleAvatar(
                         backgroundColor: Colors.green,
                       ),
                     ),
                   )
                 ],
               ),
             )
           ],
         ),
       ),
     ),
   );
  }
}
