import 'package:flutter/material.dart';
void main()=> runApp(MaterialApp(home: Chats(),));
class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            children: <Widget>[
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff3399ff),
                            Color(0xff33ccff)
                          ]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/friends.png'),
                        )),
                        Text('Contacts', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                ),
              )),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: [
                            Color(0xff33ccff),
                            Color(0xff3399ff)

                          ]
                      )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Column(
                      children: <Widget>[
                        Expanded(child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('images/group.png'),
                        )),
                        Text('Groups', style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                        ),),
                      ],
                    ),
                  ),
                ),
              )),

            ],
          ),
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListView.builder(
              padding: EdgeInsets.all(5),
              itemBuilder: (context,i){
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: (){},
                    title: Text('Mr. Charles', style: TextStyle(color: Colors.black54, fontWeight: FontWeight.bold),),
                    //trailing: Icon(Icons.chat),
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('images/moesha.png'),
                    ),
                    subtitle: Text('Enemies are not God', style: TextStyle(color: Colors.black38),),
                  ),
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
