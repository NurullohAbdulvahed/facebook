import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:badges/badges.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:glassmorphism/glassmorphism.dart';



class ChatPage extends StatefulWidget {
  static final String id = 'ChatPage';

  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  void nothing(){}
  List<StoryProfile> listStory = [
    StoryProfile(storyImage: "assets/images/chandriAngarra.jpg", storyName: "Chandri"),
    StoryProfile(storyImage: "assets/images/dillonwanner.jpg", storyName: "Dillon"),
    StoryProfile(storyImage: "assets/images/thierrylemaitre.jpg", storyName: "Thierry"),
    StoryProfile(storyImage: "assets/images/maurolima.jpg", storyName: "Mauro"),
    StoryProfile(storyImage: "assets/images/collinslesulie.jpg", storyName: "Collins"),
    StoryProfile(storyImage: "assets/images/hakimdiy.jpg", storyName: "Hakim"),

  ];

  List<User> listUser = [
    User(
        userImage: "assets/images/chandriAngarra.jpg",
        userNme: "Chandri Angarra",
        userMessage: "You:What`s man",
        userMessage2: " • 9:40 AM"
    ),
    User(
        userImage: "assets/images/dillonwanner.jpg",
        userNme: "Dillon Wanner",
        userMessage: "You:Ok,thanks! •",
        userMessage2: " 9:25 AM"),
    User(
        userImage: "assets/images/thierrylemaitre.jpg",
        userNme: "Thierry Maitre",
        userMessage: "You: Ok,See you in To...",
        userMessage2: " • Fri"),
    User(
        userImage: "assets/images/maurolima.jpg",
        userNme: "Mauro Lima",
        userMessage: "Have a good day,Maisy! ",
        userMessage2: "• Fri"),
    User(
        userImage: "assets/images/collinslesulie.jpg",
        userNme: "Collins Lesulie",
        userMessage: "The business plan loo..",
        userMessage2: "• Thu"),
    User(
        userImage: "assets/images/hakimdiy.jpg",
        userNme: "Hakim Diy",
        userMessage: "The business plan loo..",
        userMessage2: "• Thu"),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Container(
      //     child: Row(
      //       children: [
      //         Container(
      //           height: 40,
      //           width: 40,
      //           decoration: BoxDecoration(
      //               image: DecorationImage(
      //                   image: AssetImage("assets/images/yunus.jpg")),
      //               borderRadius: BorderRadius.circular(30)),
      //         ),
      //         SizedBox(
      //           width: 10,
      //         ),
      //         Container(
      //           child: Text(
      //             "Chats",
      //             style: TextStyle(
      //                 color: Colors.black,
      //                 fontSize: 30,
      //                 fontWeight: FontWeight.bold),
      //           ),
      //         )
      //       ],
      //     ),
      //   ),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   actions: [
      //     Container(
      //       child: GestureDetector(
      //         onTap: (){},
      //           child: Image.asset("assets/images/takephoto.png")
      //       ),
      //     ),
      //     Container(
      //         child: GestureDetector(
      //           onTap: (){},
      //             child: Image.asset("assets/images/newmessage.png"))),
      //   ],
      // ),
      appBar: AppBar(
        actions: [
          Container(
            child: IconButton(
              icon: Icon(FontAwesomeIcons.toggleOff,color: Colors.black,),
              onPressed: (){},
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                      image: AssetImage("assets/images/qashqir.jpg")
                    )
                  ),
                  height: 50,
                  width: 50,

                ),
                SizedBox(width: 10,),
                Container(
                  child: Text("Chats",style: TextStyle(color: Colors.black,fontSize: 25),),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade100
                  ),
                  child: Icon(FontAwesomeIcons.camera,color: Colors.black,size: 20,),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade100
                  ),
                  child: Icon(FontAwesomeIcons.solidEdit,color: Colors.black,size: 20,),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              //search
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

              //yourStory
              const SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.white,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.14,
                  child: ListView.builder(
                    itemBuilder: (ctx, index) {
                      if (index == 0) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              child: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 35),
                                ),
                              ),
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.grey.shade300),
                            ),
                            Container(
                              child: Text(
                                "Your Story",
                                textAlign: TextAlign.left,
                              ),
                            )
                          ],
                        );
                      }
                      return buildStory(index);
                    },
                    itemCount: listStory.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                  )),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return buildListTile(index);
                },
                itemCount: listUser.length,
              ),

            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: [
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.solidComment,
            color: Colors.black,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Badge(
              shape: BadgeShape.circle,
              position: BadgePosition.topEnd(),
              badgeContent: Text(
                "2",
                style: TextStyle(color: Colors.green.shade700),
              ),
              badgeColor: Colors.lightGreenAccent,
              child: Icon(FontAwesomeIcons.userFriends)),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.solidCompass,
            color: Colors.grey,
          ),
          label: '',
        ),
      ]),
    );
  }

  Widget buildListTile(int index) {
    return index == listUser.length - 1
        ? Slidable(
      key: ValueKey(0),
      startActionPane: ActionPane(
        dismissible: DismissiblePane(onDismissed: () {}),
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (BuildContext context){
              print("Click");
            },
            backgroundColor: Color(0xFFFE4A49),
            foregroundColor: Colors.white,
            icon: Icons.delete,
            label: 'Delete',
          ),
        ],
        
      ),
      endActionPane: const ActionPane(
        motion: ScrollMotion(),
        children: [
          SlidableAction(
            // An action can be bigger than the others.
            flex: 2,
            onPressed: null,
            backgroundColor: Color(0xFF7BC043),
            foregroundColor: Colors.white,
            icon: Icons.archive,
            label: 'Archive',
          ),
        ],
      ),
            child: ListTile(
              trailing: Image.asset("assets/images/elem.jpg",fit: BoxFit.cover,width: 70,height: 50,),
              title: Row(
                children: [
                  Text("Elementaree"),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                      alignment: Alignment.center,
                      height: 15,
                      width: 42,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        "Реклама",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ))
                ],
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("5 семейных ужинов"),
                  Container(
                    child: GestureDetector(
                      child: Text(
                        "Ещё",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  "assets/images/elementaree.jpg",
                ),
              ),
            ),
          )
        : Slidable(
      startActionPane: ActionPane(
        motion: ScrollMotion(),
        children:[
          Container(
            margin: EdgeInsets.all(5),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blue
            ),
            child:Icon(Icons.camera_alt,color: Colors.white,size: 20,),
          ),
          Container(
            margin: EdgeInsets.all(10),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200
            ),
            child:Icon(Icons.phone,color: Colors.black,size: 20,),
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade200
            ),
            child:Icon(FontAwesomeIcons.video,color: Colors.black,size: 20,),
          ),
        ]
      ),
        endActionPane:  ActionPane(
          motion: ScrollMotion(),
          children: [
            Container(
              margin: EdgeInsets.all(5),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200
              ),
              child:Icon(Icons.more_horiz,color: Colors.black,size: 20,),
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200
              ),
              child:Icon(Icons.notifications,color: Colors.black,size: 20,),
            ),
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.redAccent
              ),
              child:Icon(FontAwesomeIcons.trash,color: Colors.white,size: 20,),
            ),
          ],
        ),
          child: ListTile(
              trailing: Icon(FontAwesomeIcons.checkCircle),
              title: Text(listUser[index].userNme),
              subtitle: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Text(listUser[index].userMessage)),
                  Container(child: Text(listUser[index].userMessage2)),
                  //Text(listUser[index].userMessage2),
                ],
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(listUser[index].userImage),
              ),
            ),
        );
  }

  Column buildStory(int index) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
      Stack(
        children: [

          Container(
           // alignment: Alignment.bottomRight,
            height: 60,
            width: 60,
            margin: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(listStory[index].storyImage),fit: BoxFit.cover)),
          ),
          Positioned(
            bottom: 5,
            right: 5,
            child: Container(
              alignment: Alignment.bottomRight,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white,width: 2),
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),

              height: 17,
              width: 17,
            ),
          ),
        ],
      ),

        Container(
          child: Text(listStory[index].storyName),
        )
      ],
    );
  }
}

class StoryProfile {
  String storyImage;
  String storyName;

  StoryProfile({required this.storyImage, required this.storyName});
}

class User {
  String userNme;
  String userImage;
  String userMessage;
  String userMessage2;

  User(
      {required this.userImage,
      required this.userNme,
      required this.userMessage,
      required this.userMessage2});
}
